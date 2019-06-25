--1 NF: Values in cells must be atomic 

DROP TABLE IF EXISTS rental_first_nf;

WITH source AS (
	SELECT
		*,
		trim(regexp_split_to_table(items,
				E',')) AS item
	FROM
		rental_import
),
fixed AS (
	SELECT
		customer,
		email,
		rental_number,
		total::money,
		rental_date::date,
		split_part(item,
			';',
			1) AS title,
		split_part(item,
			';',
			2) AS rating,
		split_part(item,
			';',
			3)::money AS fee
	FROM
		source
)
SELECT
	* INTO rental_first_nf
FROM
	fixed;