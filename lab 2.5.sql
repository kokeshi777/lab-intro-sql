select first_name, last_name from actor
where first_name='Scarlett'
order by last_name asc;
select sum(rental_id) as total_rentals from rental;
select max(length) as max_duration, min(length) as min_duration from film;
SELECT time_format(ROUND(AVG(length) ,2),'%H %i %s"') from film;
SELECT ROUND(AVG(length) ,2) AS "Rounded Avg."
FROM film;
SELECT count(distinct(last_name)) as unique_last_names from actor;
SELECT DATEDIFF(min(convert(rental_date,date)), max(convert(last_update,date))) AS DateDiff from rental; 
select *,Dayofweek(convert(rental_date,date)),month(convert(rental_date,date)),Dayofweek(convert(return_date,date)),month(convert(return_date,date))  from rental
limit 20;
select count(rental_id)
SELECT count(rental_id) AS rentals FROM rental
WHERE CONVERT(last_update,date) BETWEEN '2006-01-15 21:30:53' AND '2006-02-15 21:30:53'
order by rental_id asc;