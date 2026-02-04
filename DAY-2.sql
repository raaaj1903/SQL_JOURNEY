
-- How to delete specific rows from a table
-- Deleting columns in SQL tables
-- Practical examples to illustrate both techniques
-- Real-world scenarios to help you apply your new skills effectively
-- By the end of this session, you will be comfortable with deleting unwanted data and modifying your database structure, empowering you to maintain clean and optimized tables in your projects.

CREATE TABLE employe2(
employe_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
position VARCHAR(50),
department VARCHAR(50),
hire_date DATE,
salary NUMERIC(10,2)

);

SELECT * FROM employe2;

INSERT INTO employe2(employe_id,name,position,department,hire_date,salary)
                  VALUES(101,'raj','swe','development','2022-03-13',52000.32),
				  (102,'rishi','tester','testing','2021-12-15',83322.21),
				  (103,'pratham','backend dev','development','2023-01-31',15000.23),
				  (104,'prathamESH','backend dev','development','2022-01-31',15000.23);


-- DELETE COMMAND FOR SPECIFIC ROW
DELETE FROM employe2
WHERE  department='testing';

-- Delete employee whose age is greater than 60
DELETE FROM employees
WHERE age > 60;

-- Delete employee whose emp_id=101 
DELETE FROM employees
WHERE emp_id = 101;

