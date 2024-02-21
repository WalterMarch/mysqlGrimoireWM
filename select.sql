USE sakila;

-- simple AND
SELECT title, category, rating FROM film_list WHERE category = 'Sci-Fi' AND rating = 'PG';

-- LIKE query using wildcards
-- _ is exactly one wildcard character; % is 0 or more
SELECT title, actors FROM film_list WHERE actors LIKE 'J_M%';

-- Use IN for an OR on a single field
SELECT title, category, rating FROM film_list WHERE category IN ('FAMILY', 'CHILDREN');

-- simple OR query
SELECT title, category, rating FROM film_list WHERE category = 'FAMILY' OR rating = 'G';

-- combining IN and AND
SELECT title, category, rating FROM film_list WHERE category IN ('Sci-fi', 'Family') AND rating = 'G';

-- simple order by (with LIMIT)
SELECT address, last_update FROM address ORDER BY last_update LIMIT 5;

-- order by using ASC and DESC (with LIMIT)
SELECT address, district FROM address ORDER BY district ASC, address DESC LIMIT 10;

-- LIMIT showing use of offset (with ORDER BY)
-- explicitly defining default behavior
SELECT last_name, first_name FROM actor ORDER BY last_name LIMIT 0, 20;

-- using offset; returns 20 rows starting at row 11
SELECT last_name, first_name FROM actor ORDER BY last_name LIMIT 10, 20;

-- alternative syntax
SELECT last_name, first_name FROM actor ORDER BY last_name LIMIT 20 OFFSET 10;

-- simple INNER JOIN
SELECT city, country FROM city INNER JOIN country ON city.country_id = country.country_id WHERE country.country = 'United Kingdom' ORDER BY country, city;

-- simple INNER JOIN with USING
SELECT city, country FROM city INNER JOIN country USING (country_id) WHERE country.country = 'United Kingdom' ORDER BY country, city;