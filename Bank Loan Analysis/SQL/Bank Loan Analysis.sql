CREATE TABLE bank_loan_data (
    id SERIAL PRIMARY KEY,
    address_state VARCHAR(2),
    application_type VARCHAR(20),
    emp_length VARCHAR(20),
    emp_title VARCHAR(60),
    grade CHAR(1),
    home_ownership VARCHAR(20),
    issue_date DATE,
    last_credit_pull_date DATE,
    last_payment_date DATE,
    loan_status VARCHAR(20),
    next_payment_date DATE,
    member_id INT,
    purpose VARCHAR(50),
    sub_grade VARCHAR(3),
    term VARCHAR(20),
    verification_status VARCHAR(20),
    annual_income NUMERIC,
    dti NUMERIC,
    installment NUMERIC,
    int_rate NUMERIC,
    loan_amount NUMERIC,
    total_acc INT,
    total_payment NUMERIC
);

COPY bank_loan_data(id, address_state, application_type, emp_length, emp_title, grade, home_ownership, issue_date, last_credit_pull_date, last_payment_date, loan_status, next_payment_date, member_id, purpose, sub_grade, term, verification_status, annual_income, dti, installment, int_rate, loan_amount, total_acc, total_payment)
FROM 'C:\Program Files\PostgreSQL\16\data\bank_loan_data.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM bank_loan_data;

SELECT * FROM bank_loan_data WHERE id IS NULL;

SELECT COUNT(id) AS Total_Applications FROM bank_loan_data;

SELECT COUNT(id) AS Total_Applications 
FROM bank_loan_data 
WHERE EXTRACT(MONTH FROM issue_date) = 12;

SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data;

SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
WHERE EXTRACT(MONTH FROM issue_date) = 11;

SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data;

SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM bank_loan_data;

SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM bank_loan_data WHERE EXTRACT(MONTH FROM issue_date) = 12;

SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan_data;

SELECT ROUND(AVG(dti),4)*100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE EXTRACT(MONTH FROM issue_date) = 12;

SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data;

SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data;

SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status;
		
SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE EXTRACT(MONTH FROM issue_date) = 12 
GROUP BY loan_status;

SELECT 
    EXTRACT(MONTH FROM issue_date) AS Month_Number,
    TO_CHAR(issue_date, 'Month') AS Month_Name,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM 
    bank_loan_data
GROUP BY 
    EXTRACT(MONTH FROM issue_date), TO_CHAR(issue_date, 'Month')
ORDER BY 
    Month_Number;
	
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership;



