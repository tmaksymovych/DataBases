use p001;

(
    with ClientInfo AS(
        -- creating a cte for future select
        SELECT
            c.customerId,
            concat(c.first_name, " ", c.last_name) as full_name, -- connect name + surname
            ci.email,
            ci.phone_number
        from clients c 
        join clients_info ci on c.customerId = ci.customerId
    )
    SELECT 
        c.customerId,
        c.full_name,
        c.email,
        c.phone_number,
        a.accountID,
        a.balance,
        a.status,
        tr.transaction_type,
        tr.description,
        l.loan_amount,
        l.monthly_payment
    from ClientInfo c    /*using cte*/
    join accounts a on c.customerId = a.customerId
    join transactions tr on c.customerId = tr.customerId
    join LoanInfo l on c.customerId = l.loan_accountId
    where a.status = "Active" -- only users with "Active" account
    having l.loan_amount > 5000 -- only users with loan > 5000
)
UNION -- connect two querries.using union all, excluding repeatable outputs
(
    SELECT
        c.customerId,
        c.full_name,
        c.email,
        c.phone_number,
        a.accountID,
        a.balance,
        a.status,
        tr.transaction_type,
        tr.description,
        l.loan_amount,
        l.monthly_payment
    from ClientInfo c
    join accounts a on c.customerId = a.customerId
    join transactions tr on c.customerId = tr.customerId
    join LoanInfo l on c.customerId = l.loan_accountId
    where tr.transactionId in (   /*creating subquery for filtering data*/
        select transactionID
        from transactions
        where transaction_type = "Withdrawal" -- only users who used "Withdrawal"
    )
)
ORDER BY customerId -- ascending sorting 
LIMIT 10; -- read only 10 first records



