select distinct(release_year) from film;
select title from film
where title regexp'ARMAGEDDON';
select title from film
where title like '%APOLLO';
select title, length from film
order by length desc
limit 10;
select title, special_features from film
where special_features like '%Behind the Scenes%';
alter table staff
drop column picture;
select staff_id from staff;
insert into staff values
(3,'TAMMY', 'SANDERS','79','TAMMY.SANDERS@sakilacustomer.org','2','1','test','test','2006-02-15 04:57:20');
insert into rental (rental_id, rental_date, inventory_id, customer_id, staff_id)
values (16050,'2021-01-20',1,130,1);

SELECT customer_id, email, active
FROM customer
WHERE active = 0;
drop table if exists deleted_users;
CREATE TABLE deleted_users (
	customer_id int(11) UNIQUE NOT NULL,
    email varchar(50) DEFAULT NULL,
    date int(11)); 

alter table deleted_users
modify date date;

insert into deleted_users (customer_id,email,date)
VALUES
(16,'SANDRA.MARTIN@sakilacustomer.org','2021-01-20'), 
(64,'JUDITH.COX@sakilacustomer.org','2021-01-20'), 
(124,'SHEILA.WELLS@sakilacustomer.org','2021-01-20'), 
(169,'ERICA.MATTHEWS@sakilacustomer.org','2021-01-20'), 
(241,'HEIDI.LARSON@sakilacustomer.org','2021-01-20'),
(271,'PENNY.NEAL@sakilacustomer.org','2021-01-20'),
(315,'KENNETH.GOODEN@sakilacustomer.org','2021-01-20'),
(368,'HARRY.ARCE@sakilacustomer.org','2021-01-20'),
(406,'NATHAN.RUNYON@sakilacustomer.org','2021-01-20'),
(446,'THEODORE.CULP@sakilacustomer.org','2021-01-20'),
(482,'MAURICE.CRAWLEY@sakilacustomer.org','2021-01-20'),
(510,'BEN.EASTER@sakilacustomer.org','2021-01-20'),
(534,'CHRISTIAN.JUNG@sakilacustomer.org','2021-01-20'),
(558,'JIMMIE.EGGLESTON@sakilacustomer.org','2021-01-20'),
(592,'TERRANCE.ROUSH@sakilacustomer.org','2021-01-20');
SELECT *
FROM deleted_users;
SELECT customer_id, active
FROM customer
WHERE active = 0;
DELETE FROM customer 
WHERE (customer_id) IN (16,64,124,169,241,271,315,368,406,446,482,510,534,558,592);
alter table payment add CONSTRAINT `f_payment_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE;
alter table rental add CONSTRAINT `f_rental_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE;




