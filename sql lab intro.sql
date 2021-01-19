select * from actor,address,category,city,country,customer,film,film_actor,film_category,film_text,inventory,language,payment,rental,staff,store;
select title from film;
select distinct name as language from language;
select count(store_id) as locations from store;
select count(staff_id) as staff from staff;
select first_name from staff;
select distinct count(rental_date) as amount_of_unique_rental_days from rental;