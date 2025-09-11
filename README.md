# [Bank Loan - Data Analysis](https://app.powerbi.com/view?r=eyJrIjoiZDVjNWQ5MzYtMzA3Zi00ODYzLWE5YjUtMzhlZWY4NzZlZWQyIiwidCI6IjFlYmE0NDNmLTIzZTUtNDUzNC05MGQxLTA5NzZhYWJlODZhYyIsImMiOjR9 "Power BI link")

## Overview 

This project presents a Power BI dashboard that highlights the main insights from bank loans issued through the Lending Club platform. The dashboard provides a clear view of key performance indicators (KPIs) such as the number of loan applications, the total loan amount received by the financial institution, the average interest rate, and the average Debt-to-Income (DTI) ratio, among others.

In addition, it segments loans into categories, identifying them as **“Good”** when the borrower has fully repaid the debt or is still making payments, and **“Bad”** when the loan has not been repaid. The dashboard also incorporates other relevant visualizations that contribute to a deeper understanding of loan performance and borrower behavior.

This type of analysis is highly valuable, as banks commonly evaluate the profitability of their loan portfolios by examining revenues, default rates, and collection efforts. At the same time, the data analyzed serves to assess the credit risk associated with granting loans to individuals or businesses, while also supporting the decision-making process involved in reviewing loan applications.


## Preview

https://github.com/user-attachments/assets/bb64417f-318c-4936-9bdf-97a58bd92b79

## Project Structure

This project repository is organised as follows: 

```text
.
├── data/                    <- Datasets used
├── docs/
│   └── powerbi_photos/      <- Images/screenshots of the project
├── powerbi/                 <- Folder containing the final report, Power BI files (PBIX, videos, theme, etc.)
├── sql/                     <- SQL scripts used in the project
├── .gitattributes
└── README.md                <- README .
```

## [Data](https://github.com/Margaly-Flores/Bank-Loan-Analysis-PowerBI-SQL/blob/main/data/DATA_DESCRIPTION.md)
This dataset represents thousands of loans granted through the Lending Club platform. LendingClub is a leading digital bank in the United States that provides a wide range of financial services to individuals and businesses, including personal loans, small business loans, and full-service banking solutions.

The bank loan dataset contains 24 columns. These fields, described in the [data](https://github.com/Margaly-Flores/Bank-Loan-Analysis-PowerBI-SQL/blob/main/data/DATA_DESCRIPTION.md) section, provide detailed information about the borrowers and each loan, including the last payment date, interest rate, debt-to-income (DTI) ratio, loan purpose, risk classification, and more.


## Dashboard
The dashboard simulates a SQL connection with Power BI. In the SQL section, you will find the detailed data exploration queries as well as the connection settings to SQL.

**The Power BI Dashboard consists of three report pages:**
+ **Summary:** Displays details about good loans granted and bad loans (percentage, number, total amount, loan status, etc.).  
+ **Overview:** Shows charts that identify the total applications by month, by state, by purpose, by loan term, borrower employment length, and housing status.
+ **Details:** Provides details of each loan application such as purpose, issue date, amount, interest rate, grade, etc.

[Detalles de las medidas creadas.]() 