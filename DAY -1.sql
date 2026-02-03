-- 🔹 What you'll learn:

-- How to insert data into tables using SQL commands
-- The importance of specifying columns while inserting data
-- Skipping auto-incremented columns using the SERIAL data type
-- Practical examples of inserting values for multiple columns
-- Key differences between SERIAL and INTEGER data types
-- Tips on saving and organizing your SQL queries efficiently
-- By the end of this session, you'll have mastered the essential skills to add and manage data in your databases confidently.




CREATE TABLE employe(
employe_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
position VARCHAR(50),
department VARCHAR(50),
hire_date DATE,
salary NUMERIC(10,2)


);

-- SELECT * FROM employe;
-- SELECT name,position FROM employe;


INSERT INTO employe(name,position,department,hire_date,salary)
                  VALUES('raj','swe','development','2022-03-13',52000.32),
				  ('rishi','tester','testing','2021-12-15',83322.21),
				  ('pratham','backend dev','development','2023-01-31',15000.23);

-- SELECT * FROM employe ;
-- SELECT salary FROM employe WHERE salary>53000;


-- TRUNCATE COMMAND USING ALLL DATA REMOVE IN PARTICULAR TABALE


TRUNCATE TABLE employe;
SELECT * FROM employe


--serila number comtinouse incresing restart seri numeber we using RESTART IDENTITY
TRUNCATE TABLE employe RESTART IDENTITY;
