/*Retrieve the title, release year, and length of all movies in the database.*/
SELECT title, release_year, length
FROM film

/*List the titles and descriptions of movies released after the year 2000*/
SELECT title, description
FROM film
WHERE release_year>2000

/*Display the first 10 movie titles in alphabetical order. */
SELECT title
FROM film 
ORDER BY title
LIMIT 10

/*Show the titles of movies where the title contains the word "Action"*/
SELECT title
FROM film
WHERE title LIKE '%Action%'

/*List the titles of movies that contain the word "Love" in any case (case-insensitive):*/
SELECT title
FROM film
WHERE LOWER(title) LIKE '%love%'

/*Display the title of movies in uppercase and their description in lowercase*/
SELECT UPPER(title) AS title_up,
       LOWER(description) AS desciprion_low
FROM film

/*Retrieve the first name and last name of customers whose last name starts with "A" 
and their first name contains "e" or "E*/
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE 'A%' and
     (first_name LIKE '%e%' OR first_name LIKE '%E%')

/*List the titles of movies with a rental rate greater than $4.00, 
ordered by rental rate in descending order.*/
SELECT title
FROM film
WHERE rental_rate > 4.00
ORDER BY rental_rate

/*Display the titles of the 5 longest movies*/
SELECT title 
FROM film 
ORDER By length DESC
LIMIT 5

/*Find the titles of movies that have "dog" anywhere
in their title and were released before the year 2005.*/
SELECT title
FROM film
WHERE title LIKE '%dog%' AND release_year < 2005

/*List the first name and last name of customers
whose last name starts with "M" and their first name has an "a" or "A" in the second position*/
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE 'M%' AND SUBSTRING(first_name, 2, 1) IN ('a', 'A')

/*Retrieve the titles of movies that contain the word "fantasy" 
and sort them in alphabetical order.*/
SELECT title
FROM film
WHERE LOWER(title) LIKE '%fantasy%'
ORDER BY title;
