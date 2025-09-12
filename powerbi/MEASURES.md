### Total Loan Applications
Calculates the total number of loan applications received during a given period. It is important to monitor monthly-to-date (MTD) loan applications and track month-over-month (MoM) changes.

```DAX
Total Loan Applications = COUNT(bank_loan_data[id])
```

```DAX
MTD Loan Applications = CALCULATE(TOTALMTD([Total Loan Applications],'Date Table'[Date]))
```

```DAX
MoM Loan Applications = ([MTD Loan Applications] - [PMTD Loan Applications])/[PMTD Loan Applications]
```

### Total Funded Amount
Calculates the total amount of funds disbursed in the form of loans. Monitoring MTD loan applications and tracking MoM changes is also necessary.

```DAX
Total Funded Amount = SUM(bank_loan_data[loan_amount])
```

```DAX
MTD Funded Amount = CALCULATE(TOTALMTD([Total Funded Amount],'Date Table'[Date]))
```

```DAX
MoM Total Funded Amount = ([MTD Funded Amount] - [PMTD Total Funded Amount])/[PMTD Total Funded Amount]
```

### Total Amount Received
Calculates the total amount received from borrowers to evaluate the bank’s cash flow and loan repayments. Monitoring MTD loan applications and tracking MoM changes is essential.

```DAX
Total Amount Receive = SUM(bank_loan_data[total_payment])
```

```DAX
MTD Total Amount Received = CALCULATE(TOTALMTD([Total Amount Receive],'Date Table'[Date]))
```

```DAX
MoM Total Amount Received = ([MTD Total Amount Received] - [PMTD Total Amount Received])/[PMTD Total Amount Received]
```

### Average Interest Rate
Calculates the average interest rate across all loans. Tracking MTD values and monitoring MoM variations in interest rates provides insights into the overall cost of the loan portfolio.

```DAX
Avg Interest Rate = AVERAGE(bank_loan_data[int_rate])
```

```DAX
MTD Avg Int Rate = CALCULATE(TOTALMTD([Avg Interest Rate],'Date Table'[Date]))
```

```DAX
MoM Avg Int Rate = ([MTD Avg Int Rate] - [PMTD Avg Int Rate])/[PMTD Avg Int Rate]
```

### Average Debt-to-Income(DTI) Ratio: 
Evaluates the average DTI of borrowers to assess their financial health. We calculate the average DTI across all loans, track MTD performance, and monitor MoM fluctuations.

$$
\mathrm{DTI} = \left(\frac{\text{Monthly debt payments}}{\text{Gross monthly income}}\right)\times 100
$$

DTI  | Description
------------- | -------------
0% – 20%  |  Excellent. Strong capacity to take on credit.
21% – 35%  |  Good. Acceptable for many loans.
36% – 49%  |  Moderate risk. There may be restrictions or higher interest rates.
50% or more  |  High risk. Difficult to obtain new loans.

```DAX
Avg DTI = AVERAGE(bank_loan_data[dti])
```

```DAX
MTD Avg DTI = CALCULATE(TOTALMTD([Avg DTI],'Date Table'[Date]))
```

```DAX
MoM Avg DTI = ([MTD Avg DTI] - [PMTD Avg DTI])/[PMTD Avg DTI]
```

### Good Loan 
Borrowers who have paid off their entire debt ('Fully Paid') or are still paying it off (‘Current’) are considered.

Calculate: 

##### Good Loan Application Percentage
Good Loan Applications
Good Loan Funded Amount
Good Loan Total Received Amount




### Bad Loan 
Here are the borrowers who did not pay off their debt ('Charged Off'). 