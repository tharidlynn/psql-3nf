--3 NF: Non-keys describe the primary key and nothing else ALTER TABLE customers DROP COLUMN IF EXISTS id;

ALTER TABLE films DROP COLUMN IF EXISTS id;

ALTER TABLE rentals DROP COLUMN IF EXISTS id;

ALTER TABLE rentals DROP COLUMN IF EXISTS customer_id;

ALTER TABLE rentals DROP COLUMN IF EXISTS film_id;

ALTER TABLE customers
	ADD COLUMN id serial PRIMARY KEY NOT NULL;

ALTER TABLE films
	ADD COLUMN id serial PRIMARY KEY NOT NULL;

ALTER TABLE rentals
	ADD COLUMN id serial PRIMARY KEY NOT NULL;

ALTER TABLE rentals
	ADD COLUMN customer_id int;

ALTER TABLE rentals
	ADD COLUMN film_id int;