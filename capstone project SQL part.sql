-- 1. Group the customers based on their income type and find the average of their annual income.
SELECT Type_Income AS income_type, AVG(Annual_income) AS average_income
FROM your_table_name
GROUP BY Type_Income;

-- Find Female Owners of Cars and Property
SELECT *
FROM your_table_name
WHERE Gender = 'F' AND (Car_Owner = 'Yes' OR Propert_Owner = 'Yes');

-- Find Male Customers Staying with Their Families:
SELECT *
FROM your_table_name
WHERE Gender = 'M' AND Housing_type = 'With parents';

-- List the Top Five People with the Highest Income:
SELECT *
FROM your_table_name
ORDER BY Annual_income DESC
LIMIT 5;

-- Count Married People with Bad Credit:
SELECT COUNT(*) AS married_bad_credit_count
FROM your_table_name
WHERE Marital_status = 'Married' AND label = 0;

-- Find the Highest Education Level and Total Count:
SELECT EDUCATION, COUNT(*) AS Count
FROM your_table_name
GROUP BY EDUCATION
ORDER BY Count DESC;


-- Between Married Males and Females with Bad Credit
SELECT MAX(Gender) AS Gender, COUNT(*) AS bad_credit_count
FROM your_table_name
WHERE Marital_status = 'Married' AND label = '0'
GROUP BY Gender;











