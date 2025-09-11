## Description of fields 

Each of the fields in the dataset will be described below.


Field  | Description
------------- | -------------
**ID**  | Loan ID. A unique identifier assigned to each loan application or loan account. Serves as the primary key.
**ADDRESS_STATE**  |  Borrower’s location.
**APPLICATION_TYPE**  |  Application type. Indicates whether the loan is an individual application or a joint one with two co-borrowers.
**EMP_LENGTH**  |  Employment length. Information about the borrower’s job stability. Duration of employment in years. Possible values range from 0 to 10, where 0 means less than one year and 10 means ten or more years.
**EMP_TITLE**  |  Job title. Specifies the borrower’s occupation or job title. Helps to understand the source of income.
**GRADE**  |  Risk grade assigned to the loan according to the borrower’s creditworthiness. Higher grades indicate lower risk. **A** (Very low risk), **B** (Low risk), **C** (Moderate risk), **D** (High risk), **E** (Very high risk), **F** (Extreme risk). 
**HOME_OWNERSHIP**  |  Homeownership. Indicates whether the borrower owns, rents, or has another type of residence. Provides insight into financial stability.
**ISSUE_DATE**  |  Issue date. Indicates the date when the loan originated. Key for monitoring and maturity calculations.
**LAST_CREDIT_PULL_DATE**  |  Last credit pull date. Records the last time the borrower’s credit report was accessed.
**LAST_PAYMENT_DATE**  |  Last payment date. Marks the most recent loan payment received.
**LOAN_STATUS**  |  Loan status. Indicates the current status of the loan (paid, active, default, etc.).A loan in default means it is a bad loan, i.e., the borrower is not paying installments properly and is not repaying the loan taken from the bank.“Active” means the loan is still ongoing, but the borrower is paying installments regularly.
**NEXT_PAYMENT_DATE**  |  Next payment date. The estimated date of the next installment.
**MEMBER_ID**  |  Unique ID assigned to the borrowing member.
**PURPOSE**  |  Loan purpose. Indicates the reason for the loan (debt consolidation, education, car purchase, etc.).
**SUB_GRADE**  |  Sub-grade (e.g., C1, C5, E1, B2, etc.). Provides more precise evaluation within the same grade (A, B, C, D, E, F). **C1** → Category C, but the least risky among C-type loans.
**TERM**  |  Term. Defines the loan duration in months.
**VERIFICATION_STATUS**  |  Verification status. Indicates whether the borrower’s financial information has been verified.
**ANNUAL_INCOME**  |  Annual income. Reflects the borrower’s yearly income.
**DTI**  |  Debt-to-Income Ratio. Used to assess a person’s ability to manage monthly debt payments compared to their monthly income. **0% – 20%** (Excellent). **21% – 35%** (Good). **36% – 49%** (Moderate risk). **50% or more** (High risk).
**INSTALLMENT**  |  Installment. The fixed monthly loan payment amount, which includes both principal and interest.
**INT_RATE**  |  Interest rate. Represents the annual cost of financing expressed as a percentage.
**LOAN_AMOUNT**  |  Loan amount. The total sum borrowed. Defines the principal.
**TOTAL_ACC**  |  Total accounts. The total number of credit lines currently listed in the borrower’s credit file.
**TOTAL_PAYMENT**  |  Total loan payment. Payments received to date for the total financed amount. Indicates how much of the loan has been repaid.