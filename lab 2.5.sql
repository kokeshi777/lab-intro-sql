select first_name, last_name from actor
where first_name='Scarlett'
order by last_name asc;
select sum(rental_id) as total_rentals from rental;
select max(length) as max_duration, min(length) as min_duration from film;
SELECT ROUND(AVG(length) ,2) AS "Rounded Avg."
FROM film;
SELECT count(distinct(last_name)) as unique_last_names from actor;
SELECT DATEDIFF(min(convert(rental_date,date)), max(convert(last_update,date))) AS DateDiff from rental; 
# I am at a complete loss for this one even with google I had an appointment this day and left early and tried to make it up over the weekend, and could not figure this out.
select *,weekday(convert(rental_date,date)) as rental_day_of_week ,month(convert(rental_date,date)) as rental_month,Dayofweek(convert(return_date,date)) as return_day_of_week,month(convert(return_date,date)) as return_month from rental
order by rental_id asc
limit 20;
select count(rental_id) from rental
where rental_date between '2006-01-14 15:16:03' and '2006-02-14 15:16:03';
