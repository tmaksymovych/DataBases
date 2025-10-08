use p001;

INSERT INTO clients (first_name, last_name) VALUES
('Alex', 'Johnson'),
('Maria', 'Smith'),
('Daniel', 'Brown'),
('Emma', 'Wilson'),
('Liam', 'Taylor'),
('Olivia', 'Anderson'),
('Noah', 'Martinez'),
('Sophia', 'Clark'),
('James', 'Lopez'),
('Ava', 'Davis');

INSERT INTO clients_info (customerId, date_of_birth, address, phone_number, email) VALUES
(1, '1990-03-12', '123 Main St, New York', '380971234567', 'alex.johnson@email.com'),
(2, '1985-07-22', '45 Oak Ave, Chicago', '380632345678', 'maria.smith@email.com'),
(3, '1992-11-05', '67 Pine St, Los Angeles', '380682345671', 'daniel.brown@email.com'),
(4, '1998-04-30', '89 Maple Rd, Seattle', '380932457821', 'emma.wilson@email.com'),
(5, '1991-01-16', '12 Hill Ln, Miami', '380954561234', 'liam.taylor@email.com'),
(6, '1996-09-09', '78 River St, Dallas', '380952341122', 'olivia.anderson@email.com'),
(7, '1989-06-17', '54 Cedar Dr, Denver', '380681113322', 'noah.martinez@email.com'),
(8, '1995-10-28', '43 Lake Blvd, Boston', '380731155789', 'sophia.clark@email.com'),
(9, '1993-02-03', '98 Forest Way, Austin', '380501224411', 'james.lopez@email.com'),
(10, '1999-08-14', '21 Park Ave, Phoenix', '380992341567', 'ava.davis@email.com');

INSERT INTO accounts (accountId, customerId, balance, status, open_date) VALUES
(1001, 1, 4500.00, 'Active', '2022-01-10'),
(1002, 2, 12500.75, 'Active', '2021-09-12'),
(1003, 3, 980.50, 'Active', '2023-02-20'),
(1004, 4, 0.00, 'Closed', '2020-11-05'),
(1005, 5, 7420.20, 'Active', '2023-07-01'),
(1006, 6, 23800.00, 'Active', '2022-03-14'),
(1007, 7, 13250.80, 'Active', '2021-12-30'),
(1008, 8, 410.00, 'Active', '2024-01-10'),
(1009, 9, 5120.00, 'Active', '2023-10-05'),
(1010, 10, 300.00, 'Closed', '2020-05-25');

INSERT INTO transactions (customerId, transaction_time, transaction_type, description) VALUES
(1, '2024-09-01 09:30:00', 'Deposit', 'Salary Deposit'),
(1, '2024-09-15 10:00:00', 'Withdrawal', 'ATM Withdrawal'),
(2, '2024-08-12 11:45:00', 'Deposit', 'Freelance Income'),
(2, '2024-09-05 15:00:00', 'Fee', 'Account Maintenance'),
(3, '2024-07-25 13:15:00', 'Transfer', 'To Savings Account'),
(4, '2023-12-01 09:20:00', 'Withdrawal', 'Shopping Payment'),
(5, '2024-01-10 14:40:00', 'Deposit', 'Bonus Payment'),
(6, '2024-06-18 08:50:00', 'Deposit', 'Salary Deposit'),
(7, '2024-07-07 16:10:00', 'Fee', 'Transfer Fee'),
(8, '2024-05-12 12:00:00', 'Deposit', 'Cash Deposit');

INSERT INTO LoanInfo (loan_accountId, loan_amount, monthly_payment, term_months) VALUES
(1, 15000.00, 450.00, 36),
(2, 5000.00, 150.00, 24),
(3, 12000.00, 380.00, 36),
(5, 8000.00, 260.00, 30),
(6, 25000.00, 720.00, 48),
(7, 10000.00, 320.00, 36),
(8, 5000.00, 140.00, 24),
(9, 20000.00, 600.00, 48),
(10, 7500.00, 230.00, 30),
(4, 0.00, 0.00, 0);
