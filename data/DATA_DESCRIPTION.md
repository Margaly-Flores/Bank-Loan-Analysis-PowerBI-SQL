## Description os fields 

Each of the fields in the dataset will be described below.


Field  | Description
------------- | -------------
ID  | Loan ID. A unique identifier assigned to each loan application or loan account. Serves as the primary key.
ADDRESS_STATE  |  Borrower’s location.
APPLICATION_TYPE  |  Application type. Indicates whether the loan is an individual application or a joint one with two co-borrowers.
EMP_LENGTH  |  Employment length. Information about the borrower’s job stability. Duration of employment in years. Possible values range from 0 to 10, where 0 means less than one year and 10 means ten or more years.
EMP_TITLE  |  Job title. Specifies the borrower’s occupation or job title. Helps to understand the source of income.
GRADE  |  Risk grade assigned to the loan according to the borrower’s creditworthiness. Higher grades indicate lower risk. A, B, C, D, E, F.
Content Cell  | Content Cell 
Content Cell  | Content Cell
Content Cell  | Content Cell 
Content Cell  | Content Cell
Content Cell  | Content Cell 
Content Cell  | Content Cell
Content Cell  | Content Cell 
Content Cell  | Content Cell
Content Cell  | Content Cell 
Content Cell  | Content Cell
Content Cell  | Content Cell 
Content Cell  | Content Cell
Content Cell  | Content Cell 
Content Cell  | Content Cell
Content Cell  | Content Cell 
Content Cell  | Content Cell
Content Cell  | Content Cell 



A → Very low risk

Borrowers with excellent credit history, high income, and low debt.

Lowest interest rate.

Highest probability of on-time payments.

B → Low risk

Good credit history, stable income.

Interest rate slightly higher than A, but still attractive.

C → Moderate risk

Decent credit history, but with some warning signs (e.g., higher debt or less stable income).

Medium interest rate.

D → High risk

Possible past credit issues, less consistent income.

Higher interest rate to offset risk.

E → Very high risk

Poor credit history or high level of indebtedness.

Borrower likely to face repayment difficulties.

Very high interest rate.

F → Extreme risk

High delinquency, history of defaults.

Very few institutions lend to this category.

Extremely high interest rate or direct loan rejection.

HOME_OWNERSHIP  |  Homeownership. Indicates whether the borrower owns, rents, or has another type of residence. Provides insight into financial stability.

ISSUE_DATE  |  Issue date. Indicates the date when the loan originated. Key for monitoring and maturity calculations.

LAST_CREDIT_PULL_DATE  |  Last credit pull date. Records the last time the borrower’s credit report was accessed.

LAST_PAYMENT_DATE  |  Last payment date. Marks the most recent loan payment received.

LOAN_STATUS  |  Loan status. Indicates the current status of the loan (paid, active, default, etc.).

A loan in default means it is a bad loan, i.e., the borrower is not paying installments properly and is not repaying the loan taken from the bank.

“Active” means the loan is still ongoing, but the borrower is paying installments regularly.

NEXT_PAYMENT_DATE: Next payment date. The estimated date of the next installment.

MEMBER_ID: Unique ID assigned to the borrowing member.

PURPOSE: Loan purpose. Indicates the reason for the loan (debt consolidation, education, car purchase, etc.).

SUB_GRADE: Sub-grade (e.g., C1, C5, E1, B2, etc.). Provides more precise evaluation within the same grade (A, B, C, D, E, F).

C1 → Category C, but the least risky among C-type loans.

C5 → Still Category C, but the riskiest within that group.

B2 → Second best subcategory within B, more reliable than B4 or B5.

TERM: Term. Defines the loan duration in months.

VERIFICATION_STATUS: Verification status. Indicates whether the borrower’s financial information has been verified.

ANNUAL_INCOME: Annual income. Reflects the borrower’s yearly income.

DTI: Debt-to-Income Ratio. Used to assess a person’s ability to manage monthly debt payments compared to their monthly income.