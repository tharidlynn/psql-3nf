# Third normal form (3NF) with PostgreSQL and SQL
This is the simple demonstration on the 3NF database with plain SQL transformation. 

![Rentals_ERD](/Users/john/Desktop/master/psql-3nf/rentals_erd.png)

## Requirement
* PostgreSQL Database 

## Step by Step
_Note: do not forget to change your path in "01_import_data.sql"_

1. Create a new database by executing `psql -f sql/00_create_db.sql`
2. Import data with `psql -d rentals -f sql/01_import_data.sql` 
3. `psql -d rentals -f sql/02_first_nf.sql`
4. `psql -d rentals -f sql/03_second_nf.sql`
5. `psql -d rentals -f sql/04_third_nf.sql`
6. `psql -d rentals -f sql/05_ref_integrity.sql`

