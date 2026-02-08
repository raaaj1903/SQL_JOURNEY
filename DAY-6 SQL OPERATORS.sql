-- ARTHAMATIC OPERATOR
-- Operator  Meaning      Example
-- +	      Addition	    10 + 5
-- -	    Subtraction	    10 - 5
-- *	  Multiplication	10 * 5
-- /	     Division	    10 / 5
-- %	Modulus (remainder)	10 % 3

SELECT *FROM import_csv;

-- 1- Retrieve the first_name salary and calculate a 10%bonus on the salaery
SELECT first_name,salary,
                 (salary*0.10)AS BONUS
FROM import_csv;				 


2--CALCULATE THE ANUAL SALARY AND SALARY INCREMENTBY 5% -show the monthaly new salary as well
SELECT first_name,last_name,salary,
(salary*12)AS ANUAL_SALARY,
(salary*0.05)AS INCREMENT_AMOUNT,
(salary*1.05)AS NEW_SALARY,
(salary+salary*0.5)AS NEW_SALARY2
FROM import_csv;

-- COMPARISON OPERATOR
-- Operator	Meaning
--   =	        Equal to
--  != or <>	Not equal to
--   >	        Greater than
--   <	        Less than
--  >=	        Greater than or equal to
--  <=	        Less than or equal to

SELECT * FROM import_csv;
-- SHOW THE NAME OF IMPLOYES WHERE AGE IS 30+
SELECT first_name FROM import_csv
WHERE age>30;

-- MATCHES ALL ACEEPT 30
SELECT first_name FROM import_csv
WHERE age<>30;

-- WRITE QUERY TO FIND THE NAME OF PEOPLE WHERE AGE IS ABOVE 35+ AND SALARY IS ABOVE 30000
SELECT first_name FROM import_csv
WHERE age>35 AND salary>30000;

-- >=operator use
SELECT first_name,salary FROM import_csv
WHERE age>=30 AND salary>=30000 ;

-- <=operator use
SELECT first_name,salary FROM import_csv
WHERE age>30 AND salary<40000;

-- LOGICAL OPERATOR
-- Operator precedence (important)
-- NOT is evaluated first
-- AND is evaluated before OR
-- Use parentheses () to avoid confusion

-- Operator	Description
-- AND	       All conditions must be true
-- OR	       Any one condition must be true
-- NOT     	Reverses the condition

-- USING AND OPERATOR
SELECT * FROM import_csv
WHERE age>=35 AND salary>=50000;

-- USING OR OPERATOR
SELECT * FROM import_csv
WHERE age>=35 OR salary<10000;


-- USING NOT OPERATOR
SELECT * FROM import_csv
WHERE NOT (department='IT')

