SELECT * 
FROM sakila.city;


SELECT *
FROM sakila.country;


SELECT c.city, c.city_id, s.country
FROM sakila.city c 
JOIN sakila.country s
ON c.country_id = s.country_id;