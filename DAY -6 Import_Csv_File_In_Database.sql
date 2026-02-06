-- import csv file data into SQL by writing simple query in SQL, First you need to create a table structure then write query in sql and add CSV File path.

DROP TABLE IF EXISTS import_csv;

-- Step 1: Create table structure same as CSV file columns
CREATE TABLE import_csv(
employee_id INT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(20) NOT NULL,
department VARCHAR(20),
salary NUMERIC(10,2),
joining_date DATE,
age INT
);


SELECT *FROM import_csv;

        
 -- Step 2: Import CSV file data into table using file path
COPY 
import_csv(employee_id,first_name,last_name,department,salary,joining_date,age)
FROM '‪C:\Users\rajja\Downloads\import_csv'
DELIMITER ','         -- Columns are separated by comma
CSV HEADER;            -- Ignore header row of CSV

