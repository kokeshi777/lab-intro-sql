SELECT s.store_id, a.address, c.city, cr.country 
FROM store s 
join address a using(address_id) 
join city c on c.city_id = a.city_id
join country cr on c.country_id = cr.country_id;

select s.store_id, sum(p.amount)
FROM store s 
left join staff st
on s.store_id = st.store_id
left join payment p
on st.staff_id = p.staff_id
group by s.store_id
order by p.amount desc;

select c.name, avg(f.length)
from film f
left join film_category fc
on f.film_id=fc.film_id
left join category c
on fc.category_id=c.category_id
group by c.name
order by avg(f.length) desc;


select c.name, avg(f.length), rank() over(order by avg(f.length) desc)
from film f
left join film_category fc
on f.film_id=fc.film_id
left join category c
on fc.category_id=c.category_id
group by c.name;

select f.title, count(r.rental_id) as times_rented
from film f
left join inventory i
on f.film_id=i.film_id
left join rental r
on i.inventory_id=r.inventory_id
group by title
order by times_rented desc;

select c.name, sum(p.amount) as gross_revenue
from category c 
left join film_category fc
on c.category_id=fc.category_id
left join inventory i
on fc.film_id=i.film_id
left join rental r
on i.inventory_id=r.inventory_id
left join payment p
on r.rental_id=p.rental_id
group by c.name
order by sum(p.amount) desc
limit 5;

select s.store_id, f.title, r.rental_date, r.return_date, i.inventory_id, i.film_id
from rental r 
join 
inventory i using (inventory_id)
join 
film f using (film_id)
join 
store s using (store_id)
where r.return_date is not null and title='Academy Dinosaur'
group by inventory_id
having store_id=1;

