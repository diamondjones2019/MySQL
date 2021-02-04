/* Creating A Temporary Table */

CREATE TABLE temp_employee (
EmployeeID int, 
JobTitle varchar(100), 
Salary int
)

SELECT *
FROM temp_employee;

INSERT INTO temp_employee
VALUES ('1000', 'HR', '45000');


CREATE TABLE temp_employee2(
JobTitle varchar(50),
EmployeePerJob int, 
AvgAge int, 
AvgSalary int);


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50), 
FirstName varchar(50), 
LastName varchar(50)
);

INSERT INTO EmployeeErrors 
VALUE ('1001 ', 'Jimbo ', 'Halbert'), 
('1002 ', 'Pamela ', 'Beasly'), 
('1003 ', 'TOby ', 'Flington - Fired');

SELECT *
FROM EmployeeErrors;


-- Using Trim, LTrim, RTrim removes any blank spaces 
SELECT EmployeeID, TRIM(EmployeeID) As IDTRIM
FROM EmployeeErrors;

SELECT EmployeeID, LTRIM(EmployeeID) As IDTRIM
FROM EmployeeErrors;

SELECT EmployeeID, RTRIM(EmployeeID) As IDTRIM
FROM EmployeeErrors;


-- Using Replace
SELECT LastName, REPLACE(LastName, '- Fired','') AS LastNameFixed
FROM EmployeeErrors;


-- Substring (specify place of data)
SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors;


-- Upper and Lower Case
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors;

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors;