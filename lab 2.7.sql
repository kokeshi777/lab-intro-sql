drop table if exists films_2020;
CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` int(6),
  `rental_rate` decimal(4,2),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;
show variables like 'local_infile';
set global local_infile = 1;
use sakila;
load data local infile 'C:\\Users\\Nickolaus Smith\\Documents\\GitHub\\lab-intro-sql\\films_2020.csv'
into table films_2020
fields terminated by ',';
show global variables like 'local_infile';
select * from films_2020;
select * from film;
update films_2020 set rental_duration = '3';
update films_2020 set rental_rate = '2.99';
update films_2020 set replacement_cost = '3';
SELECT last_name FROM actor
GROUP BY last_name
HAVING COUNT(last_name) = 1;
SELECT last_name, COUNT(last_name) FROM actor
GROUP BY last_name
HAVING COUNT(last_name) > 1;
select staff_id, count(rental_id) as rentals from rental
group by staff_id
order by count(rental_id) desc;
select release_year, count(film_id) as releases from film
group by release_year
order by count(film_id) desc;
select rating, round(avg(length),2) as avg_film_length from film
group by rating
order by round(avg(length),2) desc;
select rating, round(avg(length),2) as avg_film_length from film
group by rating
having round(avg(length),2) > 120
order by round(avg(length),2) desc;




