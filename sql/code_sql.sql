-- TOTAL DE SOLICITUDES DE PRÉSTAMO 
SELECT COUNT(id) AS total_loan_applications
FROM "LoanBank_Data" ;


-- SOLICITUDES PARA EL MES DICIEMBRE Y AÑO 2021 
SELECT COUNT(id) AS month_to_date_loan_applications
FROM "LoanBank_Data" 
WHERE EXTRACT(MONTH FROM issue_date) = 12 
AND EXTRACT(YEAR FROM issue_date) = 2021; 


-- SOLICITUDES PARA EL MES NOVIEMBRE Y AÑO 2021 
SELECT COUNT(id) AS month_to_date_loan_applications
FROM "LoanBank_Data" 
WHERE EXTRACT(MONTH FROM issue_date) = 11 
AND EXTRACT(YEAR FROM issue_date) = 2021; 


-- DIFERENCIA PORCENTUAL (MoM – Month on Month)
-- (MTD - PMTD) / PMTD

WITH applications_per_month AS (
SELECT EXTRACT(MONTH FROM issue_date) AS month_,
COUNT(id) AS total_applications
FROM "LoanBank_Data"
WHERE EXTRACT(YEAR FROM issue_date) = 2021
AND EXTRACT(MONTH FROM issue_date) IN (11,12)
GROUP BY EXTRACT(MONTH FROM issue_date)
)

SELECT ROUND(
(dec.total_applications - nov.total_applications)::numeric / nov.total_applications * 100, 2
) AS percentage_MoM 
FROM (SELECT total_applications FROM applications_per_month WHERE month_ = 12) dec,
(SELECT total_applications FROM applications_per_month WHERE month_ = 11) nov; 


-- MONTO TOTAL FINANCIADO
SELECT SUM(loan_amount) AS Total_Funded_Amount 
FROM "LoanBank_Data"; 


-- MONTO TOTAL FINANCIADO POR MES 
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM "LoanBank_Data"
WHERE EXTRACT(MONTH FROM issue_date) = 12 ; 


-- MONTO TOTAL FINANCIADO MES ANTERIOR 
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount 
FROM "LoanBank_Data"
WHERE EXTRACT(MONTH FROM issue_date) = 11; 


-- TASA DE INTERÉS PROMEDIO 
SELECT AVG(int_rate)*100 AS AVG_Int_Rate 
FROM "LoanBank_Data"; 

-- TASA DE INTERÉS PROMEDIO DEL ÚLTIMO MES 
SELECT AVG(int_rate)*100 AS MTD_AVG_Int_Rate
FROM "LoanBank_Data"
WHERE EXTRACT(MONTH FROM issue_date) = 12; 

-- TASA DE INTERÉS PROMEDIO DEL MES ANTERIOR 
SELECT AVG(int_rate)*100 AS PMTD_AVG_Int_Rate
FROM "LoanBank_Data"
WHERE EXTRACT(MONTH FROM issue_date) = 11; 

-- PROMEDIO DTI (ratio deuda-ingreso)
-- DTI: Evalúa la capacidad de una persona de pagar la deuda 
SELECT ROUND(AVG(dti)*100,3) AS AVG_DTI 
FROM "LoanBank_Data"; 

-- PROMEDIO DTI DEL ÚLTIMO MES 
SELECT ROUND(AVG(dti)*100 ,3) AS MTD_AVG_DTI
FROM "LoanBank_Data"
WHERE EXTRACT(MONTH FROM issue_date) = 12; 

-- PROMEDIO DTI DEL PENÚLTIMO MES 
SELECT ROUND(AVG(dti)*100, 3) AS PMTD_AVG_DTI
FROM "LoanBank_Data"
WHERE EXTRACT(MONTH FROM issue_date) = 11; 

------------------------------------------------------------------------
-- BUEN CRÉDITO - PORCENTAJE 
SELECT (COUNT(
CASE 
	WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100) / COUNT(id) 
	AS Good_Loan_Percentage
FROM "LoanBank_Data"; 

-- BUENAS SOLICITUDES DE CRÉDITO
SELECT COUNT(id) AS Good_Loan_Applications 
FROM "LoanBank_Data"
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'


-- IMPORTE DE BUEN CRÉDITO FINANCIADO 
SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount
FROM "LoanBank_Data"
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'; 


-- MONTO RECIBIDO DE BUENOS CRÉDITOS
SELECT SUM(total_payment) AS Good_Loan_Amount_Received 
FROM "LoanBank_Data"
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'; 

------------------------------------------------------------------------
-- CRÉDITOS FALLIDOS 

-- CRÉDITOS FALLIDOS - PORCENTAGE 
SELECT (COUNT(
CASE 
	WHEN loan_status = 'Charged Off' THEN id END))*100 / COUNT(id) 
	AS Bad_Loan_Percentage 
FROM "LoanBank_Data"; 


-- CRÉDITOS FALLIDOS - SOLICITUDES 
SELECT COUNT(id) AS Bad_Loan_Applications 
FROM "LoanBank_Data"
WHERE loan_status = 'Charged Off'; 


-- IMPORTE CRÉDITOS FALLIDOS FINANCIADOS 
SELECT SUM(loan_amount) AS Bad_Loan_Funded_Amount 
FROM "LoanBank_Data"
WHERE loan_status = 'Charged Off'; 


-- IMPORTE DE CRÉDITOS FALLIDOS RECIBIDOS 
SELECT SUM(total_payment) AS Bad_Loan_Amount_Received 
FROM "LoanBank_Data"
WHERE loan_status = 'Charged Off'; 


----------------------------------------------------------------------------

-- ESTADO DEL CRÉDITO
SELECT loan_status,
COUNT(id) AS Loan_Count,
SUM(total_payment) AS Total_amount_received,
SUM(loan_amount) AS Total_Funded_amount,
AVG(int_rate*100) AS Interest_rate,
AVG(dti*100) AS DTI
FROM "LoanBank_Data"
GROUP BY loan_status; 


-- MONTO FINANCIADO Y MONTO RECIBIDO SEGÚN ESTADO DEL CRÉDITO
SELECT loan_status,
SUM(total_payment) AS MTD_Total_amount_received, 
SUM(loan_amount) AS MTD_Total_funded_amount
FROM "LoanBank_Data"
WHERE EXTRACT(MONTH FROM issue_date) = 12
GROUP BY loan_status; 


-------------------------------------------------------------------------

-- REPORTE CRÉDITO BANCARIO
-- MENSUAL

SELECT EXTRACT(MONTH FROM issue_date) AS Month_number, 
TO_CHAR(issue_date, 'Month') AS Month_name, 
COUNT(id) AS Total_Loan_Applications, 
SUM(loan_amount) AS Total_Funded_amount, 
SUM(total_payment) AS Total_Amount_Received 
FROM "LoanBank_Data"
GROUP BY EXTRACT(MONTH FROM issue_date), TO_CHAR(issue_date, 'Month')
ORDER BY EXTRACT(MONTH FROM issue_date); 


-- ESTADO (LOCALIZACIÓN) 
SELECT address_state AS state_, 
COUNT(id) AS Total_loan_applications,
SUM(loan_amount) AS Total_Funded_amount, 
SUM(total_payment) AS Total_amount_received 
FROM "LoanBank_Data"
GROUP BY address_state
ORDER BY address_state; 


-- PLAZO DEL CRÉDITO 
SELECT term AS Term, 
COUNT(id) AS Total_loan_applications, 
SUM(loan_amount) AS Total_funded_applications, 
SUM(total_payment) AS Total_amount_received
FROM "LoanBank_Data"
GROUP BY term
ORDER BY term; 


-- DURACIÓN DEL EMPLEADO 
SELECT emp_length AS Employee_length, 
COUNT(id) AS Total_loan_applications, 
SUM(loan_amount) AS Total_Fundaded_amount , 
SUM(total_payment) AS Total_amount_received 
FROM "LoanBank_Data"
GROUP BY emp_length
ORDER BY emp_length; 


-- PROPÓSITO 
SELECT purpose AS PURPOSE, 
COUNT(id) AS Total_loan_applications,
SUM(loan_amount) AS Total_funded_amount,
SUM(total_payment) AS Total_amount_received
FROM "LoanBank_Data"
GROUP BY purpose
ORDER BY purpose; 


-- PROPIEDAD DE LA VIVIENDA
SELECT home_ownership AS Home_Ownership,
COUNT(id) AS Total_loan_applications,
SUM(loan_amount) AS Total_funded_amount,
SUM(total_payment) AS Total_amount_received
FROM "LoanBank_Data"
GROUP BY home_ownership
ORDER BY home_ownership; 


-- El propósito de los prestatarios de los créditos con menor riego (A)
SELECT purpose AS PURPOSE, 
COUNT(id) AS Total_loan_aplications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_amount_received
FROM "LoanBank_Data"
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose; 








