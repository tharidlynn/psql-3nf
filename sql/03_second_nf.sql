--2 NF: Must be in 1NF and each row must be identifiable by a unique value or set of values, aka a "primary key" DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS rentals;

DROP TABLE IF EXISTS films;

CREATE TABLE customers (
	email varchar(255),
	name varchar(255)
);

INSERT INTO customers (email, name)
SELECT
	email,
	customer
FROM
	rental_first_nf
GROUP BY
	email,
	customer;

CREATE TABLE rentals (
	email varchar(255),
	film_title varchar(50),
	number varchar(50),
	date date,
	total money
);

INSERT INTO rentals (email, film_title, number, date, total)
SELECT
	email,
	title,
	rental_number,
	rental_date,
	total
FROM
	rental_first_nf
GROUP BY
	email,
	title,
	rental_number,
	rental_date,
	total;

CREATE TABLE films (
	title varchar(50),
	rating varchar(50),
	fee money
);

INSERT INTO films (title, rating, fee)
SELECT
	title,
	rating,
	fee
FROM
	rental_first_nf
GROUP BY
	title,
	rating,
	fee;