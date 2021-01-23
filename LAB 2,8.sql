select title, length, rating, rank() over (order by length desc) as 'Rank' from film
having length <> '' and length <> ' ';
select title, length, rating, rank() over (partition by rating order by length desc) as 'Rank' from film
having length <> '' and length <> ' ';
select c.name , count(f.film_id)  from category as c
left join film_category as f 
on c.category_id = f.category_id
group by c.name
order by count(f.film_id) desc;
select a.actor_id, a.first_name, a.last_name, count(f.film_id) as 'films' from actor as a
left join film_actor as f 
on a.actor_id = f.actor_id
group by a.actor_id
order by count(f.film_id) desc;
select c.customer_id, c.first_name, c.last_name, count(r.rental_id) as 'rentals' from customer as c
left join rental as r 
on c.customer_id = r.customer_id
group by c.customer_id
order by count(r.rental_id) desc;