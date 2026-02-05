CREATE TABLE IF NOT EXISTS USERS1 (
	USER_ID SERIAL PRIMARY KEY,
	USERNAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	AGE INT,
	CITY VARCHAR(50)
);

SELECT
	*
FROM
	USERS1;

-- Insert 5 sample users into the users table
INSERT INTO
	USERS1 (USERNAME, EMAIL, AGE, CITY)
VALUES
	('Rajesh', 'rajesh@gmail.com', 25, 'mumbai'),
	('priya', 'priya@gmail.com', 23, 'mumbai'),
	('raj', 'raj@gmail.com', 34, 'delhi'),
	('rishi', 'rishi@gmail.com', 34, 'jabalpur');

-- UPDATE DATABASE WITH THE HELP OF TOOL BAR
SELECT
	*
FROM
	USERS1
ORDER BY
	USER_ID;

-- delete data with the help of querry
DELETE FROM USERS1
WHERE
	USER_ID = 6;


-- TO RENAME  THE USERNAME COLUMN TO full_name with the help of later command

ALTER TABLE users1
RENAME COLUMN username TO full_name;


SELECT
	*
FROM
	USERS1;

TO CHANGE THE AGE COLUMNS DATA TYPE TFRO