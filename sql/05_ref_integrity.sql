UPDATE
	rentals
SET
	customer_id = (
		SELECT
			id
		FROM
			customers
		WHERE
			email = rentals.email), film_id = (
			SELECT
				id
			FROM
				films
			WHERE
				title = rentals.film_title);

ALTER TABLE rentals DROP CONSTRAINT IF EXISTS rental_customers;

ALTER TABLE rentals DROP CONSTRAINT IF EXISTS rental_films;

ALTER TABLE rentals
	ADD CONSTRAINT rental_customers FOREIGN KEY (customer_id) REFERENCES customers (id);

ALTER TABLE rentals
	ADD CONSTRAINT rental_films FOREIGN KEY (film_id) REFERENCES films (id);