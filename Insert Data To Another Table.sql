DESC employee;

CREATE TABLE employee_info AS
SELECT ID, NAME
FROM employee;

INSERT employee_info (ID, Name)
SELECT ID, Name
FROM employee;


INSERT employee_info 
VALUES ('3074', 'Daniel Edwards');


SELECT *
FROM employee_info;

DELETE FROM employee_info 
WHERE ID='3094' AND Name='Daniel Edwards';

SELECT *
FROM employee;

SELECT ID, Name, DOB, Email
FROM employee
WHERE ID IS NULL;

SELECT *
FROM employee;
