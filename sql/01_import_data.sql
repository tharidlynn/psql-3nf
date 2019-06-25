--create the table and import the CSV file DROP TABLE IF EXISTS rental_import;

CREATE TABLE rental_import (
	customer VARCHAR(255),
	email VARCHAR(255),
	rental_number VARCHAR(50),
	total VARCHAR(50),
	rental_date VARCHAR(50),
	items TEXT
);

COPY rental_import
FROM
	'/Users/john/Desktop/master/psql-3nf/resources/rentals.csv' DELIMITER ',' CSV;