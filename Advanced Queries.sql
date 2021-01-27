/*Review both tables*/
SELECT * FROM sakila.film;

SELECT * FROM sakila.film_category;

/*Review both tables*/
SELECT *
FROM sakila.film, sakila.film_category;

/*Natural Joins and Inner Join is the same*/
SELECT *
FROM sakila.film, sakila.film_category
WHERE sakila.film.film_id = sakila.film_category.film_id;


SELECT sf.film_id AS 'Film ID', sf.title AS 'Title', sfc.category_id AS 'Category ID', sfc.last_update AS 'Last Update'
FROM sakila.film sf, sakila.film_category sfc
WHERE sf.film_id = sfc.film_id;

/*Self Join is repeating a column from a table*/
SELECT a.title, b.title
FROM sakila.film a, sakila.film b
WHERE a.title = b.title;

/* Explicit Joins is a more sufficient than Self */
SELECT a.title, b.title
FROM sakila.film a
JOIN sakila.film b
ON a.title = b.title;


/*Order By Function */
SELECT sf.film_id AS 'Film ID', sf.title AS 'Title', sfc.category_id AS 'Category ID', sfc.last_update AS 'Last Update'
FROM sakila.film sf
JOIN sakila.film_category sfc
ON sf.film_id = sfc.film_id
ORDER BY sf.film_id;


SELECT sf.film_id AS 'Film ID', sf.title AS 'Title', sfc.category_id AS 'Category ID', sfc.last_update AS 'Last Update'
FROM sakila.film sf
JOIN sakila.film_category sfc
ON sf.film_id = sfc.film_id
ORDER BY sfc.category_id;


/*Aggregate and Grouping */
SELECT COUNT(*) AS 'Number of Customers'
FROM sakila.customer;


SELECT COUNT(*) AS 'Number of Films'
FROM sakila.film;


SELECT *
FROM sakila.payment
WHERE rental_id > 100;


SELECT SUM(amount)
FROM sakila.payment;


SELECT 'Title:', payment_id AS 'Payment Number', SUM(amount) AS 'Total Amount'
FROM sakila.payment
GROUP BY payment_id;


SELECT 'Title:', payment_id AS 'Payment Number', SUM(amount) AS 'Total Amount'
FROM sakila.payment
GROUP BY payment_id
ORDER BY amount DESC;

SELECT 'Title:', payment_id AS 'Payment Number'
FROM sakila.payment
WHERE payment_id > 6
ORDER BY payment_id;


/*Inner Query*/
SELECT 'Title:', payment_id AS 'Payment Number'
FROM sakila.payment
WHERE payment_id >
	(
	SELECT AVG(amount)
    FROM sakila.payment
    )
ORDER BY payment_id;