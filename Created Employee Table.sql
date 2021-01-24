use test;

CREATE TABLE employee
(
ID int primary key,
Name varchar(30),
DOB datetime,
Email varchar(40)
);

DESC employee;

INSERT INTO employee
VALUES (2102, 'Mathew', '1993-11-20', 'mathew98@gmail.com');

INSERT INTO employee
VALUES (3905, 'Shawn', '1990-2-2', 'williamsshawn@gmail.com');

INSERT INTO employee
VALUES (9029, 'Kimberly', '1993-10-14', 'kimberlyjones83@gmail.com');

SELECT *
FROM employee