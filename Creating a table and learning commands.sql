/*CREATING A DATABASE & LEARNING COMMANDS */

/* Creating a database*/
SELECT * FROM database1.employee_table;

/*Inserting data into the database*/
INSERT INTO `database1`.`employee_table` (`Employee_id`, `First_name`, `Last_name`, `Age`, `Department`) VALUES ('101', 'John', 'Smith', '25', 'Sales');
INSERT INTO `database1`.`employee_table` (`Employee_id`, `First_name`, `Last_name`, `Age`, `Department`) VALUES ('202', 'David', 'Roman', '35', 'Production');
INSERT INTO `database1`.`employee_table` (`Employee_id`, `First_name`, `Last_name`, `Age`, `Department`) VALUES ('305', 'Jane', 'Doe', '40', 'Marketing');
INSERT INTO `database1`.`employee_table` (`Employee_id`, `First_name`, `Last_name`, `Age`, `Department`) VALUES ('450', 'Kimberly', 'Young', '38', 'Finance');

/*Selecting one column the data*/
SELECT First_name
FROM sakila.actor;

/*View all the columns in the data*/
SELECT *
FROM sakila.actor;

/*LIMIT command*/
SELECT *
FROM sakila.actor
LIMIT 100;

/*DISTINCT command*/
SELECT *
FROM sakila.address;

SELECT DISTINCT district
FROM sakila.address;

SELECT DISTINCT district
FROM sakila.address
LIMIT 15;

/* COUNT command*/
SELECT COUNT(*)
FROM sakila.address;

/*COUNT district column*/
SELECT COUNT(district)
FROM sakila.address;

/*COUNT the DISTINCT categories in the district column*/
SELECT COUNT(DISTINCT district)
FROM sakila.address;

/*Find a specific actor*/
SELECT first_name, last_name
FROM sakila.actor
WHERE first_name = 'PENELOPE'; 


SELECT *
FROM sakila.actor
WHERE first_name = 'PENELOPE';


SELECT *
FROM sakila.city
WHERE country_id = 100;


SELECT city, country_id
FROM sakila.city
WHERE country_id < 100;


SELECT COUNT(city)
FROM sakila.city;


/*Finding cities and country ID between 2 numbers*/
SELECT city, country_id
FROM sakila.city
WHERE country_id BETWEEN 50 AND 80;

/*Finding a specific numbers in a column */
SELECT *
FROM sakila.city
WHERE country_id IN (55,65,75);

