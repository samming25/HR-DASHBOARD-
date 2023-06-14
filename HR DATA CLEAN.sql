CREATE database PROJECTS;

USE PROJECTS;

SELECT * FROM HR;

ALTER TABLE HR 
CHANGE COLUMN ï»¿id EMP_ID varchar(20) NULL;

DESC HR;

SELECT birthdate from HR;

SET sql_safe_updates=0;

UPDATE HR
SET hire_date = CASE
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;

alter table HR 
modify column birthdate DATE;

select termdate from HR;


UPDATE HR 
set termdate= date(str_to_date(termdate,'%Y-%m-%d %H:%i:%s UTC'))
where termdate is not null and termdate!='';

alter table HR 
modify column termdate date; 
# this is not working


select termdate from hr;


ALTER TABLE HR ADD COLUMN AGE INT;


SELECT * FROM HR;


UPDATE HR
SET AGE=timestampdiff(YEAR,birthdate,CURDATE());

SELECT BIRTHDATE , AGE FROM HR;

SELECT MIN(AGE) AS YOUNGEST,
MAX(AGE) AS OLDEST
FROM HR;

SELECT count(*) FROM HR WHERE AGE<18;

SELECT COUNT(*) FROM hr WHERE termdate > CURDATE();

SELECT COUNT(*)
FROM hr
WHERE termdate = '0000-00-00';

SELECT location FROM hr;








