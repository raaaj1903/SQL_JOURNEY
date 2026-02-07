-- ASIGNMENT DAY
-- Drop the table if it already exists
DROP TABLE IF EXISTS EMPLOYEES;

-- Create the employees table
CREATE TABLE EMPLOYEES (
	EMPLOYEE_ID SERIAL PRIMARY KEY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(10, 2) CHECK (SALARY > 0),
	JOINING_DATE DATE NOT NULL,
	AGE INT CHECK (AGE >= 18)
);

SELECT
	*
FROM
	EMPLOYEES;

-- Insert data into employees table
INSERT INTO
	EMPLOYEES (
		FIRST_NAME,
		LAST_NAME,
		DEPARTMENT,
		SALARY,
		JOINING_DATE,
		AGE
	)
VALUES
	(
		'Amit',
		'Sharma',
		'IT',
		60000.00,
		'2022-05-01',
		29
	),
	('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
	(
		'Ravi',
		'Kumar',
		'Finance',
		70000.00,
		'2020-03-10',
		35
	),
	(
		'Anjali',
		'Verma',
		'IT',
		65000.00,
		'2019-11-22',
		28
	),
	(
		'Suresh',
		'Reddy',
		'Operations',
		50000.00,
		'2023-01-10',
		26
	);

-- Assignment Questions
--Q1: Retrieve all employeesâ€™ first_name and their departments.
SELECT
	FIRST_NAME,
	DEPARTMENT
FROM
	EMPLOYEES;

--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
UPDATE EMPLOYEES
SET
	SALARY = SALARY + (SALARY * 0.1)
WHERE
	DEPARTMENT = 'IT';

SELECT
	*
FROM
	EMPLOYEES;

--Q3: Delete all employees who are older than 34 years.
DELETE FROM EMPLOYEES
WHERE
	AGE > 34;

SELECT
	*
FROM
	EMPLOYEES;

--Q4: Add a new column `email` to the `employees` table.
ALTER TABLE EMPLOYEES
ADD COLUMN EMAIL VARCHAR(100);

SELECT
	*
FROM
	EMPLOYEES;

--Q5: Rename the `department` column to `dept_name`.
ALTER TABLE EMPLOYEES
RENAME COLUMN DEPARTMENT TO DEPT_NAME;

SELECT
	*
FROM
	EMPLOYEES;

--Q6: Retrieve the names of employees who joined after January 1, 2021.
SELECT
	FIRST_NAME,
	LAST_NAME,
	JOINING_DATE
FROM
	EMPLOYEES
WHERE
	JOINING_DATE > '2021-01-01';

--Q7: Change the data type of the `salary` column to `INTEGER`.
ALTER TABLE EMPLOYEES
ALTER COLUMN SALARY TYPE INTEGER;

SELECT
	*
FROM
	EMPLOYEES;

--Q8: List all employees with their age and salary in descending order of salary
SELECT
	AGE,
	SALARY
FROM
	EMPLOYEES
ORDER BY
	SALARY DESC;

--Q9: Insert a new employee with the following details: 
-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)
INSERT INTO
	EMPLOYEES (
		FIRST_NAME,
		LAST_NAME,
		DEPT_NAME,
		SALARY,
		JOINING_DATE,
		AGE
	)
VALUES
	(
		'Raj',
		'Singh',
		'Marketing',
		60000,
		'2023-09-15',
		30
	);

SELECT
	*
FROM
	EMPLOYEES;

--Q10: Update age of employee +1 to every employee 
UPDATE EMPLOYEES
SET
	AGE = AGE + 1;

SELECT
	*
FROM
	EMPLOYEES;


