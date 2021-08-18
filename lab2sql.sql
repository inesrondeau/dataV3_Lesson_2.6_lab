SELECT first_name,last_name
FROM sakila.actor
GROUP BY last_name
HAVING COUNT(last_name)=1;
SELECT last_name
FROM sakila.actor
GROUP BY last_name
HAVING COUNT(last_name)>1;
SELECT staff_id, COUNT(staff_id)
FROM sakila.rental
GROUP BY staff_id;
SELECT release_year, COUNT(release_year)
FROM sakila.film
GROUP BY release_year;
SELECT rating, COUNT(rating)
FROM sakila.film
GROUP BY rating;
SELECT rating, COUNT(rating), round(AVG(length),2) as 'average duration'
FROM sakila.film
GROUP BY rating;
SELECT rating, round(AVG(length),2) as 'average duration'
FROM sakila.film
GROUP BY rating
HAVING round(AVG(length),2)>120;
SELECT  DENSE_RANK() OVER(ORDER BY length ASC) as 'rank',length,title
FROM sakila.film
WHERE length IS NOT NULL AND length !=0
ORDER BY length ASC;
