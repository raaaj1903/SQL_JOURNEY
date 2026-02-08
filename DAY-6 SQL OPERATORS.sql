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


