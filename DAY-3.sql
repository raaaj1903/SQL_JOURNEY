--DROP THE TABLE IF IT ALREADY EXISTS
DROP TABLE IF EXISTS users;

--CREATE THE USERS TABLE

CREATE TABLE IF NOT EXISTS users(
user_id SERIAl PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
age INT,
city VARCHAR(50)
 
);

SELECT * FROM users;

-- Insert 5 sample users into the users table
INSERT INTO users(username, email,age,city)
values('Rajesh','rajesh@gmail.com',25,'mumbai'),
('priya','priya@gmail.com',23,'mumbai'),('raj','raj@gmail.com',34,'delhi'),('rishi','rishi@gmail.com',34,'jabalpur');


-- UPDATE TABLE COLUMS VALUSE
UPDATE users
SET age=27
WHERE username='Rajesh';

SELECT * FROM users ORDER BY user_id ASC;


UPDATE users
SET city='chennai'
WHERE age>27;


UPDATE users
SET age=31, city='kolkata'
WHERE username='priya';





