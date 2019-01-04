use sakila;

SELECT *
FROM customer;

SELECT * 
FROM city;

SELECT *
FROM address;

SELECT customer.first_name, customer.last_name, customer.email, address.address,address.city_id
FROM customer
LEFT JOIN address
ON address.address_id = customer.address_id
WHERE address.city_id = 312;

SELECT *
FROM film;

SELECT *
FROM category;

SELECT * 
FROM film_category;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name
FROM film
LEFT JOIN film_category
ON film_category.film_id = film.film_id
LEFT JOIN category
ON film_category.category_id = category.category_id
WHERE category.name = 'Comedy';

SELECT *
FROM actor;

SELECT *
FROM film_actor;

SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year
FROM actor
LEFT JOIN film_actor
ON actor.actor_id = film_actor.actor_id
LEFT JOIN film 
ON film.film_id = film_actor.film_id
WHERE actor.actor_id = 5;


SELECT *
FROM customer;

SELECT * 
FROM address;

SELECT *
FROM store;

SELECT *
FROM city;

SELECT customer.first_name, customer.last_name, customer.email, address.address
FROM customer
LEFT JOIN store
ON store.store_id= customer.store_id -- //IMPORTANT TO JOIN WITH CORRECT ID!!!!!!!!!!!!!!!
LEFT JOIN address
ON customer.address_id = address.address_id
LEFT JOIN city 
ON city.city_id = address.city_id
WHERE store.store_id = 1 AND city.city_id IN (1,42,312,459);


SELECT * FROM actor;
SELECT * FROM film_actor;
SELECT * FROM film_category;
SELECT * FROM category;
SELECT * FROM film;

SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film
WHERE rating = 'G' AND special_features LIKE '%behind the scenes%';


SELECT film.film_id, film.title, actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name
FROM actor
LEFT JOIN film_actor
ON actor.actor_id = film_actor.actor_id
LEFT JOIN film
ON film.film_id = film_actor.film_id
WHERE film.film_id = 369; 


SELECT  film.title, film.description, film.release_year, film. special_features, category.name 
FROM film
LEFT JOIN film_category
ON film.film_id = film_category.film_id
LEFT JOIN category
ON category.category_id  = film_category.category_id
WHERE rental_rate = 2.99 AND category.name LIKE 'comedy';

SELECT film.title,film.description,film.release_year,film.rating,category.name,film.special_features, category.last_update
FROM film 
LEFT JOIN category 
ON film.last_update = category.last_update 
WHERE film.rental_rate >= 2.99; 

SELECT film.title, film.description, film.release_year, film.rating, film.special_features, category.name, CONCAT(actor.first_name, ' ' , actor.last_name)
FROM actor 
LEFT JOIN film_actor
ON actor.actor_id = film_actor.actor_id
LEFT JOIN film
ON film.film_id = film_actor.film_id
LEFT JOIN film_category
ON film.film_id = film_category.film_id
LEFT JOIN category
ON category.category_id = film_category.category_id
WHERE actor.first_name LIKE 'SANDRA' AND actor.last_name LIKE 'KILMER' AND category.name LIKE 'action';




