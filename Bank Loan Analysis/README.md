# Bank Loan Analysis

## Project Overview
This project aims to analyze bank loan data to gain insights into loan applications, funded amounts, and loan performance metrics. The analysis helps to identify patterns and trends in loan issuance, interest rates, and default rates. The analysis was performed using SQL for data extraction and manipulation, and Tableau for data visualization.


## Dataset
The dataset used in this project contains the following features:
- **id**: Unique identifier for each loan application.
- **address_state**: The state where the applicant resides.
- **application_type**: Type of loan application (e.g., individual, joint).
- **emp_length**: Length of employment in years.
- **emp_title**: Job title of the applicant.
- **grade**: Loan grade assigned by the bank.
- **home_ownership**: Homeownership status of the applicant (e.g., rent, own).
- **issue_date**: The date the loan was issued.
- **last_credit_pull_date**: The date of the most recent credit report pull.
- **last_payment_date**: The date of the last payment made.
- **loan_status**: Current status of the loan (e.g., fully paid, charged off).
- **next_payment_date**: Date of the next scheduled payment.
- **member_id**: Unique identifier for the member.
- **purpose**: Purpose of the loan (e.g., debt consolidation, home improvement).
- **sub_grade**: Detailed sub-grade of the loan.
- **term**: Loan term (e.g., 36 months, 60 months).
- **verification_status**: Status of income verification (e.g., verified, not verified).
- **annual_income**: Annual income of the applicant.
- **dti**: Debt-to-income ratio.
- **installment**: Monthly installment amount.
- **int_rate**: Interest rate on the loan.
- **loan_amount**: Total loan amount requested.
- **total_acc**: Total number of credit accounts.
- **total_payment**: Total payment made towards the loan.

## Objectives
- Identify key factors influencing loan approval.
- Visualize trends and patterns in loan data.
- Provide actionable insights for stakeholders.

## Tools & Technologies Used
- **SQL**: For data extraction, cleaning, and analysis.
- **Tableau**: For creating interactive dashboards and visualizations.

## Steps Performed

1. **Data Exploration**: 
   - Loaded the dataset using SQL and examined key attributes like loan status, loan amount, and interest rate.
   - Identified and handled missing values in the dataset.

2. **Loan Applications Analysis**: 
   - Calculated the total number of loan applications.
   - Analyzed month-to-date (MTD) loan applications to assess current trends.

3. **Funding Analysis**:
   - Calculated the total funded amount for all loans.
   - Compared month-to-date (MTD) and previous month-to-date (PMTD) funded amounts to identify changes in loan funding patterns.

4. **Payment Analysis**:
   - Calculated the total amount received from loan repayments.
   - Analyzed the average interest rate and debt-to-income (DTI) ratio across loans.

5. **Loan Performance Analysis**:
   - Segregated loans into 'Good' and 'Bad' categories based on their status (e.g., Fully Paid, Current, Charged Off).
   - Calculated the percentage of good and bad loans.
   - Analyzed the funded amount and total payment received for both good and bad loans.

6. **Loan Status Summary**:
   - Created a summary of loan statuses, including the number of loans, total amount funded, total amount received, average interest rate, and average DTI ratio.

7. **Visualizations**:
   - Developed Tableau dashboards to visually represent the analysis and findings, including loan status distribution, funded amounts, and payment trends.
  
## Tableau Dashboard
Explore the interactive Tableau dashboards through the following link:[Dashboard link](https://public.tableau.com/views/BankLoanAnalysis_17132758574380/MainDashboard?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

![Main Dashboard](https://github.com/user-attachments/assets/1bc88ade-ddf1-4ddc-a5cd-0066a642bb19)

## Conclusion

In conclusion, the project demonstrates the importance of comprehensive data analysis in understanding loan performance and managing financial risk. Further analysis could include more advanced predictive modeling to anticipate loan defaults or exploring external economic factors that may impact borrower behavior. The Tableau visualizations effectively illustrate these findings, allowing stakeholders to quickly grasp the distribution of loan statuses, funding amounts, and payment trends.


