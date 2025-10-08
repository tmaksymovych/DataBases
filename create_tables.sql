drop DATABASE if EXISTS p001;
create DATABASE p001;
use p001;

CREATE TABLE clients ( 
    customerId INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE clients_info (
    customerId INT NOT NULL,
    date_of_birth DATE,
    address VARCHAR(200),
    phone_number VARCHAR(12),
    email VARCHAR(80) UNIQUE,
    FOREIGN KEY (customerId) REFERENCES clients(customerId)
);

CREATE TABLE accounts (
    accountId INT PRIMARY KEY,
    customerId INT NOT NULL,
    balance DECIMAL(15, 2) DEFAULT 0.00,
    status VARCHAR(10) DEFAULT "Active" 
        CHECK (status in ("Active", "Closed")),
    open_date DATE NOT NULL,
    Foreign Key (customerID) REFERENCES clients(customerId)
);

CREATE TABLE transactions (
    customerId INT NOT NULL,
    transactionID  INT PRIMARY KEY AUTO_INCREMENT,
    transaction_time TIMESTAMP NOT NULL,
    transaction_type VARCHAR(20) NOT NULL 
        CHECK (transaction_type IN ('Deposit', 'Withdrawal', 'Transfer', 'Fee')),
    description varchar(300),
    Foreign Key (customerId) REFERENCES clients(customerId)
);

CREATE TABLE LoanInfo (
    loan_accountId INT PRIMARY KEY,
    loan_amount decimal(15, 2),
    monthly_payment decimal(15, 2),
    term_months INT,
    Foreign Key (loan_accountId) REFERENCES clients(customerId)
);
