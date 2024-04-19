Create database projects2;

USE projects2;

SELECT * FROM hr;

-- Chnaging the Column name
ALTER TABLE hr
CHANGE COLUMN Ã¯Â»Â¿id emp_id VARCHAR(20) NULL;

DESCRIBE hr;

SELECT birthdate FROM hr;

SET sql_safe_updates = 0;       -- Turning off the security parameters  

-- Cleaning the data for birthdate and hire date
UPDATE hr 
SET birthdate = 
	CASE
		WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate,'%m/%d/%Y'),'%Y-%m-%d')
        WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate,'%m-%d-%Y'),'%Y-%m-%d')
		ELSE NULL
	END;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;

DESCRIBE hr;

SELECT birthdate FROM hr;

UPDATE hr 
SET hire_date = 
	CASE
		WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date,'%m/%d/%Y'),'%Y-%m-%d')
        WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date,'%m-%d-%Y'),'%Y-%m-%d')
		ELSE NULL
	END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

DESCRIBE hr;

SELECT hire_date FROM hr;

-- Updating termdate
SELECT termdate FROM hr;

UPDATE hr
SET termdate  = DATE(str_to_date(termdate,'%Y-%m-%d %H:%i:%s UTC'))     -- %i is for minutes
WHERE termdate IS NOT NULL AND termdate != '';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

DESCRIBE hr;

-- Adding the age column
SELECT * FROM hr;

ALTER TABLE hr ADD COLUMN age INT;

UPDATE hr 
SET age = TIMESTAMPDIFF(YEAR, birthdate, CURDATE());

SELECT 
	MIN(age) AS Youngest,
    MAX(age) AS Oldest
FROM hr;

SELECT COUNT(*) FROM hr
WHERE age < 18;
