---
sidebar_position: 7
title: PostgreSQL
slug: /postgresql
---

## PostgreSQL

PostgreSQL is an open-source relational database management system (RDBMS). It is used to store and retrieve data in a structured format. It is used to perform all types of operations on the database.

## SQL

SQL is a standard language for storing, manipulating and retrieving data in databases. It is used to perform all types of operations on the database.

## PostgreSQL Vs SQL

PostgreSQL is a relational database management system (RDBMS) whereas SQL is a standard language for storing, manipulating and retrieving data in databases.


## Data Types

PostgreSQL supports the following data types:

- `bigint` - signed eight-byte integer
- `bigserial` - auto incrementing eight-byte integer
- `bit` - fixed-length bit string
- `boolean` - logical Boolean (true/false)
- `date` - calendar date (year, month, day)
- `json` - JSON data
- `money` - currency amount
- `numeric` - exact numeric of selectable precision (decimal)
- `text` - variable-length character string
- `varchar` or `character varying` - variable-length character string
- `xml` - XML data
- `uuid` - universally unique identifier
- `inet` - IP network address
- `macaddr` - MAC address
- `timestamp` - date and time (no time zone)
- `timestamptz` - date and time (with time zone)
- `time` - time of day (no time zone)
- `timetz` - time of day (with time zone)
- `interval` - time interval
- `array` - array

Complete list of data types can be found [here](https://www.postgresql.org/docs/17/datatype.html).

## Commands

Before executing the any PostgreSQL command, we need to connect and enter into the PostgreSQL shell. We can do this by executing the following command:

```bash
psql -U <username>
```

```
psql -h <host> -U <username> -d <database>
psql -h localhost -U postgres -d test
```

This will only work if the PostgreSQL is installed and the path is set. If the path is not set, we need to navigate to the PostgreSQL directory and execute the command.

To check other options, we can execute the following command:

```bash
psql --help
```

Once we are in the PostgreSQL shell, we can execute the following commands:

- To know different options:

```sql
\?
```

- To list all databases:

```sql
\l
```

### Creating and Dropping Databases

- To create a new database:

```sql
CREATE DATABASE <database_name>;
CREATE DATABASE test;
```

:::note
The `;` at the end is important and its used to execute the command.
:::

- To connect to a database:

The connecting is more like switching to a database.

```sql
\c <database_name>
\c test
``` 

- To drop a database: (USING IS NOT RECOMMENDED)

```sql
// SYNTAX:
DROP DATABASE <database_name>;

// EXAMPLE:
DROP DATABASE test;
```

:::warning
The `DROP` command is used to delete the database and all the data in it. It is not recommended to use this command in the production environment.
::: 

### Creating and Dropping Tables

- To create a new table (Without Constrains, not recommended):

```sql
// SYNTAX:
CREATE TABLE <table_name> (
    <column_name> <data_type>,
    <column_name> <data_type>,
    .
    .
    <column_name> <data_type>
);

// EXAMPLE:
CREATE TABLE person (
    id int,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age int,
    date_of_birth DATE
);
```

:::info
We can write in multi-line in the PostgreSQL shell and it will not execute the command until we put a `;` at the end.

:::

- It will show all the tables, views, sequences, etc:

```sql
\d
```

- It will only show the tables type:

```
\dt
```

- To describe a table:

```sql
\d <table_name>
\d person
```

- To delete a table:

```sql
// SYNTAX:
DROP TABLE <table_name>;

// EXAMPLE:
DROP TABLE person;
```

:::warning
The `DROP` command is used to delete the table and all the data in it. It is not recommended to use this command in the production environment.
:::

- Create a new table with constraints:

```sql
// SYNTAX:
CREATE TABLE <table_name> (
    <column_name> <data_type> <constraints>,
    <column_name> <data_type> <constraints>,
    <column_name> <data_type> <constraints>,
    .
    .
    <column_name> <data_type> <constraints>
);

// EXAMPLE:
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(50) NULL
);
```

### Insert Records

- To insert a new record into a table:

```sql
// SYNTAX:
INSERT INTO <table_name> (
    <column_name>,
    <column_name>,
    <column_name>,
    <column_name>,
    <column_name>
) VALUES (
    <value>,
    <value>,
    <value>,
    <value>,
    <value>
);

// EXAMPLE:
INSERT INTO person (
    first_name,
    last_name
    gender,
    date_of_birth,
    email
) VALUES (`John`, `Doe`, `Male`, `1990-01-01`, `test@test.com`);
```

### Select Records

- To select or get all the records from a table:

```sql
// SYNTAX:
SELECT * FROM <table_name>;

// EXAMPLE:
SELECT * FROM person;
```

`*` is used to select all the columns. If we want to select specific columns, we can do that by specifying the column names.

```sql
// SYNTAX:
SELECT <column_name>, <column_name>, <column_name> FROM <table_name>;

// EXAMPLE:
SELECT first_name, last_name FROM person;
```

### Order By

- To select records in ascending order:

```sql
// SYNTAX:
SELECT * FROM <table_name> ORDER BY <column_name> ASC;

// EXAMPLE:
SELECT * FROM person ORDER BY first_name ASC;
SELECT * FROM person ORDER BY first_name ASC;
SELECT * FROM person ORDER BY date_of_birth ASC;
```

- To select records in descending order:

```sql
// SYNTAX:
SELECT * FROM <table_name> ORDER BY <column_name> DESC;

// EXAMPLE:
SELECT * FROM person ORDER BY first_name DESC;
```

:::info
By default, the order is ascending. So, we don't need to specify `ASC` explicitly.
:::

### Distinct Records

- To select distinct records that is unique.In this case, it will return only one record if there are multiple records with the same value.  

```sql
// SYNTAX:
SELECT DISTINCT <column_name> FROM <table_name>;

// EXAMPLE
SELECT DISTINCT first_name FROM person;
```

### Where Clause, AND, OR

- To select records based on a condition:

```sql
// SYNTAX:
SELECT * FROM <table_name> WHERE <column_name> = <value>;

// EXAMPLE:
SELECT * FROM person WHERE first_name = 'John';
SELECT * FROM person WHERE gender = 'Female';
```

- To select records based on multiple conditions:

```sql
// SYNTAX:
SELECT * FROM <table_name> WHERE <column_name> = <value> AND <column_name> = <value>;

// EXAMPLE:
SELECT * FROM person WHERE gender = 'Male' AND country_of_birth = 'Poland';
```

- To select records based on multiple conditions:

```sql
// SYNTAX:
SELECT * FROM <table_name> WHERE <column_name> = <value> OR <column_name> = <value>;

// EXAMPLE:
SELECT * FROM person WHERE gender = 'Male' AND (country_of_birth = 'Poland' OR country_of_birth = 'China');SELECT * FROM person WHERE gender = 'Male' AND (country_of_birth = 'Poland' OR country_of_birth = 'China') AND last_name = 'Lepere';
```

### Comparison Operators

`<` - Less than
`>` - Greater than
`<=` - Less than or equal to
`>=` - Greater than or equal to
`=` - Equal to
`!=` - Not equal to
`<>` - Not equal to

- To select records based on a condition:

```sql
// SYNTAX:
SELECT * FROM <table_name> WHERE <column_name> < <value>;

// EXAMPLE:
SELECT * FROM person WHERE age < 30;
```

### Limit, Offset and Fetch

- **Limit**: It is used to select a limited number of records.
- **Offset**: It is used to skip a number of records.
- **Fetch**: It is used to select a limited number of records and skip a number of records.

- To select a limited number of records:

```sql
// SYNTAX:
SELECT * FROM <table_name> LIMIT <number>;

// EXAMPLE:
SELECT * FROM person LIMIT 10;
```

- To skip a number of records:

```sql
// SYNTAX:
SELECT * FROM <table_name> OFFSET <number>;

// EXAMPLE:
SELECT * FROM person OFFSET 10;
```

- To select a limited number of records. It's same as 'LIMIT'.

```sql

// SYNTAX:
SELECT * FROM <table_name> FETCH FIRST <number> ROWS ONLY;

// EXAMPLE:
SELECT * FROM person FETCH FIRST 10 ROWS ONLY;
```

### In 

**IN** is used to specify multiple values in a WHERE clause. It's kind of a shorthand for multiple OR conditions.

- To select records based on multiple values. It's like passing an array of values to match.

```sql
// SYNTAX:
SELECT * FROM <table_name> WHERE <column_name> IN (<value>, <value>, <value>);

// EXAMPLE:
SELECT * FROM person WHERE country_of_birth IN ('Poland', 'China', 'Sweden');
SELECT * FROM person WHERE country_of_birth = 'Poland' OR country_of_birth = 'China' OR country_of_birth = 'Sweden'; // Equivalent to the above query
```

### Between

**BETWEEN** is used to select values within a range.

- To select records within a range:

```sql
// SYNTAX:
SELECT * FROM <table_name> WHERE <column_name> BETWEEN <value> AND <value>;

// EXAMPLE:
SELECT * FROM person WHERE age BETWEEN 20 AND 30;
SELECT * FROM person WHERE age >= 20 AND age <= 30; // Equivalent to the above query

SELECT * FROM person WHERE date_of_birth BETWEEN '2000-01-01' AND '2024-01-01';
```

### Like and ILike

**LIKE** is used to select values that match a pattern. It is case-sensitive.
**ILIKE** is used to select values that match a pattern. It is case-insensitive.


`%` is used to match any sequence of characters.
`_` is used to match any single character.

- To select records that match a pattern (case-sensitive):

```sql
// SYNTAX:
SELECT * FROM <table_name> WHERE <column_name> LIKE <pattern>;

// EXAMPLE:
SELECT * FROM person WHERE first_name LIKE 'J%';
SELECT * FROM person WHERE email LIKE '%@github.com';
SELECT * FROM person WHERE email LIKE '%@google.%';
SELECT * FROM person WHERE email LIKE '__________@google.%';
```

- To select records that match a pattern (case-insensitive):

```sql
// SYNTAX:
SELECT * FROM <table_name> WHERE <column_name> ILIKE <pattern>;

// EXAMPLE:
SELECT * FROM person WHERE first_name ILIKE 'j%';
SELECT * FROM person WHERE email ILIKE '%@github.com';
SELECT * FROM person WHERE email ILIKE '%@google.%';
SELECT * FROM person WHERE email ILIKE '__________@google.%';
```

### Group By

**GROUP BY** is used to group records based on a column.

- To group records based on a column:

```sql
// SYNTAX:
SELECT <column_name>, COUNT(*) FROM <table_name> GROUP BY <column_name>;

// EXAMPLE
SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth;
```

In the above query, it will group the records based on the `country_of_birth` column and count the number of records in each group.

### Having

**HAVING** is used to filter records based on a condition.

- To filter records based on a condition:

```sql
// SYNTAX:
SELECT <column_name>, COUNT(*) FROM <table_name> GROUP BY <column_name> HAVING <condition>;

// EXAMPLE
SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) > 1;
```

In the above query, it will group the records based on the `country_of_birth` column and count the number of records in each group. It will filter the groups that have more than one record. 

### Min, Max, Sum, Avg

**MIN** is used to get the minimum value of a column.
**MAX** is used to get the maximum value of a column.
**SUM** is used to get the sum of a column.
**AVG** is used to get the average value of a column.

- To get the minimum value of a column:

```sql
// SYNTAX:
SELECT MIN(<column_name>) FROM <table_name>;

SELECT MIN(age) FROM person;
```

- To get the maximum value of a column:

```sql
// SYNTAX:
SELECT MAX(<column_name>) FROM <table_name>;

SELECT MAX(age) FROM person;
```

- To get the sum of a column:

```sql
// SYNTAX:

SELECT SUM(<column_name>) FROM <table_name>;

SELECT SUM(price) FROM product;
```

- To get the average value of a column:

```sql
// SYNTAX:
SELECT AVG(<column_name>) FROM <table_name>;

SELECT ROUND(AVG(price), 2) FROM product;
```

**ROUND** is used to round the value to a specific number of decimal places.


Below query will return the minimum price of each car make.

```sql
SELECT make, MIN(price) FROM car GROUP BY make;
```

Below query will return the average price of each car make.

```sql
SELECT make, AVG(price) FROM car GROUP BY make;
```

### Arithmetic Operators

We can perform arithmetic operations on columns like addition, subtraction, multiplication, and division.

- To perform arithmetic operations:

```sql
// SYNTAX:
SELECT <column_name> + <column_name> FROM <table_name>;

// EXAMPLE:
SELECT price + tax FROM product;
```

### Alias

**Alias** is used to give a temporary name to a column or table. If we don't set it the PostgreSQL will use function name like for ROUND it will use `round` or `?column?` for the column.

- To give an alias to a column:

```sql
// SYNTAX:
SELECT <column_name> AS <alias_name> FROM <table_name>;

// EXAMPLE:
SELECT first_name AS name FROM person;

SELECT price, price * 0.1 AS tax FROM product;
```

### Coalesce

**COALESCE** is used to return the first non-null value in a list. It is helpful when we have multiple columns and we want to return the first non-null value.

- To return the first non-null value:

```sql
// SYNTAX:
SELECT COALESCE(<column_name>, 'default_value') FROM <table_name>;
SELECT COALESCE(<column_name>, <column_name>, <column_name>, 'default_value') FROM <table_name>;

// EXAMPLE:
SELECT COALESCE(email, 'N/A') FROM person;
SELECT COALESCE(email, phone, address, 'N/A') FROM person;
```

### Timestamp and Date

- To get the date and time:

```sql
SELECT NOW();
```

- To get the date:

```sql
SELECT NOW()::DATE;
```

- To get the time:

```sql
SELECT NOW()::TIME;
```

`::` is used to cast the value to a specific data type.

There are some Keywords that can be used to get the current date and time:

- `CURRENT_DATE` - It will return the current date.
- `CURRENT_TIME` - It will return the current time.
- `CURRENT_TIMESTAMP` - It will return the current timestamp.
- `LOCALTIME` - It will return the current time.

```sql
SELECT CURRENT_DATE;
SELECT CURRENT_TIME;
SELECT CURRENT_TIMESTAMP;
SELECT LOCALTIME;
```

### Adding and Subtracting Dates

- To subtract days, months, years from the current date:

```sql
// SYNTAX:
SELECT NOW() - INTERVAL '<number> <unit>';

// EXAMPLE:
SELECT NOW() - INTERVAL '1 day';
SELECT NOW() - INTERVAL '1 month';
SELECT NOW() - INTERVAL '1 year';
```

- To add days to the current date:

```sql
// SYNTAX:
SELECT NOW() + INTERVAL '<number> <unit>';

// EXAMPLE:
SELECT NOW() + INTERVAL '1 day';
SELECT NOW() + INTERVAL '1 month';
SELECT NOW() + INTERVAL '1 year';
```

With casting, we can get the date and time:

```sql
SELECT (NOW() + INTERVAL '1 day')::DATE;
// If we do the below query, it will return the date and time
SELECT NOW()::DATE + INTERVAL '1 day';
```

:::info
both `day` and `days` can be used interchangeably. The same goes for `month` and `months`, `year` and `years`.
:::

### Extract

**EXTRACT** is used to extract parts of a date.

- To extract parts of a date:

```sql
// SYNTAX:
SELECT EXTRACT(<part> FROM <date>);

// EXAMPLE:
SELECT EXTRACT(CENTURY FROM NOW());
SELECT EXTRACT(YEAR FROM NOW());
SELECT EXTRACT(MONTH FROM NOW());
SELECT EXTRACT(DAY FROM NOW());
SELECT EXTRACT(HOUR FROM NOW());
SELECT EXTRACT(MINUTE FROM NOW());
SELECT EXTRACT(SECOND FROM NOW());
```

### Nullif

**NULLIF** is used to return null if two values are equal. It is helpful when we want to return null if two values are equal.

- To return null if two values are equal:

```sql
// SYNTAX:
SELECT NULLIF(<column_name>, <column_name>) FROM <table_name>;

// EXAMPLE:
SELECT NULLIF(10, 10); // It will return null
SELECT 10 / NULLIF(0, 0) // It will return nothing
SELECT COALESCE(NULLIF(10, 10), 0); // It will return 0
```

### Age Function

**AGE** is used to calculate the age based on the date of birth.

- To calculate the age:

```sql
// SYNTAX:
SELECT AGE(Now(), '<date>');
SELECT AGE(Now(), <column_name>) FROM <table_name>;

// EXAMPLE:
SELECT AGE(Now(), '1990-01-01');
SELECT AGE(date_of_birth) FROM person;
```

### Primary Key

**Primary Key** is used to uniquely identify each record in a table. It is a unique identifier for each record.

- Drop a unique constrain

Dropping a constraint means removing the constraint from the table. The constraint can be a primary key, foreign key, unique, or check constraint. 

```sql
// SYNTAX:
ALTER TABLE <table_name> DROP CONSTRAINT <constraint_name>;

// EXAMPLE:
ALTER TABLE person DROP CONSTRAINT person_pkey;
```

We can get the constraint name by executing the below query:

```sql
\d <table_name>
```

- Add a primary key:

```sql
// SYNTAX:
ALTER TABLE <table_name> ADD PRIMARY KEY (<column_name>);

// EXAMPLE:
ALTER TABLE person ADD PRIMARY KEY (id);
```

We can also give our own name to the primary key/constraint:

```sql
// SYNTAX:
ALTER TABLE <table_name> ADD CONSTRAINT <constraint_name> PRIMARY KEY (<column_name>);

// EXAMPLE:
ALTER TABLE person ADD CONSTRAINT person_pkey PRIMARY KEY (id);
```

### Unique Constraint

**Unique Constraint** is used to ensure that all values in a column are unique.

- Add a unique constraint:

```sql
// SYNTAX:
ALTER TABLE <table_name> ADD UNIQUE (<column_name>);

// EXAMPLE:
ALTER TABLE person ADD UNIQUE (email);
```

We can also pass this while creating the table:

```sql
// SYNTAX:
CREATE TABLE <table_name> (
    <column_name> <data_type> UNIQUE,
    <column_name> <data_type> UNIQUE,
    <column_name> <data_type> UNIQUE,
    .
    .
    <column_name> <data_type> UNIQUE
);

// EXAMPLE:

CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR
    email VARCHAR(50) UNIQUE
);
```

We can also give our own name to the unique constraint:

```sql
// SYNTAX:
ALTER TABLE <table_name> ADD CONSTRAINT <constraint_name> UNIQUE (<column_name>);

// EXAMPLE:
ALTER TABLE person ADD CONSTRAINT person_email_unique UNIQUE (email);
```

### Check Constraint

**Check Constraint** is used to ensure that all values in a column meet a specific condition.

- Add a check constraint:

```sql
// SYNTAX:
ALTER TABLE <table_name> ADD CHECK (<condition>);

// EXAMPLE:
ALTER TABLE person ADD CHECK (age >= 18);
```

We can also give our own name to the check constraint:

```sql
// SYNTAX:
ALTER TABLE <table_name> ADD CONSTRAINT <constraint_name> CHECK (<condition>);

// EXAMPLE:
ALTER TABLE person ADD CONSTRAINT gender_check CHECK (gender = 'Male' OR gender = 'Female');
```

### Delete Records

- To delete all records from a table:

```sql
// SYNTAX:
DELETE FROM <table_name>;

// EXAMPLE:
DELETE FROM person;
``` 

- To delete a record from a table:

```sql
// SYNTAX:
DELETE FROM <table_name> WHERE <column_name> = <value>;

// EXAMPLE:
DELETE FROM person WHERE id = 1;
DELETE FROM person WHERE gender = 'Female' AND country_of_birth = 'Poland';
```

:::note
It's recommended to use the `WHERE` clause while deleting the records. And use primary key with the `WHERE` clause to delete the record. The reason to use the primary key is to ensure that only one record is deleted.
:::

### Update Records

- To update a record in a table:

```sql
// SYNTAX:
UPDATE <table_name> SET <column_name> = <value> WHERE <column_name> = <value>;

// EXAMPLE:
UPDATE person SET first_name = 'John' WHERE id = 1;
UPDATE person SET first_name = 'John', last_name = 'Doe', email = 'a@a.com' WHERE id = 1; // Update multiple columns
```

**SET** is used to set the new value of the column.

### On Conflict Do Nothing

**ON CONFLICT DO NOTHING** is used to do nothing if there is a conflict. It is helpful when we want to insert a record only if it doesn't exist.

- To insert a record only if it doesn't exist:

```sql
// SYNTAX:

INSERT INTO <table_name> (<column_name>, <column_name>, <column_name>) VALUES (<value>, <value>, <value>) ON CONFLICT DO NOTHING;

// EXAMPLE:
INSERT INTO person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES (5, 'Roxy', 'Sellan', 'rsellan4@networkadvertising.org', 'Female', '2024-03-31', 'South Africa') ON CONFLICT (id) DO NOTHING;
```

:::note
To use `ON CONFLICT DO NOTHING`, we need to have a unique constraint on the column.
:::

### On Conflict Do Update

**ON CONFLICT DO UPDATE** is used to update a record if there is a conflict. It is helpful when we want to update a record if it exists. For example if someone provided a wrong email and they instantly update it.

- To update a record if it exists:

```sql
// SYNTAX:
INSERT INTO <table_name> (<column_name>, <column_name>, <column_name>) VALUES (<value>, <value>, <value>) ON CONFLICT (<column_name>) DO UPDATE SET <column_name> = <value>;

// EXAMPLE:
INSERT INTO person (id, first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES (5, 'Roxy', 'Sellan', 'rsellan4@network@advertising.com', 'Female', '2024-03-31', 'South Africa') ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email;
```

Above query will insert a record if it doesn't exist. If it exists, it will update the email.

**EXCLUDED** is used to get the value of the column that is being inserted. In above example we can do EXCLUDED.email, EXCLUDED.first_name, etc.


### Foreign Key

**Foreign Key** is used to create a relationship between two tables. It is used to ensure that the value in a column exists in another table. It is used to maintain the referential integrity between two tables. 

- Add a while creating the table:

```sql
// SYNTAX:
CREATE TABLE <table_name> (
    <column_name> <data_type> REFERENCES <table_name>(<column_name>),
);

// EXAMPLE:
CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR
    email VARCHAR(50) UNIQUE,
    country_of_birth VARCHAR(50),
    car_id BIGINT REFERENCES car(id)
);

CREATE TABLE car (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL
);
```

After creating table and add some data, we can assign a car to a person by updating the car_id in the person table.

```sql
UPDATE person SET car_id = 1 WHERE id = 1;
```

```sql
create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price Numeric(19, 2) NOT NULL
);

create table person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(20) NOT NULL,
	email VARCHAR(100),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_id BIGINT REFERENCES car(id) UNIQUE
);

insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Lalo', 'Sowte', 'Male', 'lsowte0@sina.com.cn', '2024-11-16', 'Palestinian Territory');
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Townsend', 'Le Grove', 'Male', null, '2024-11-12', 'Canada');
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) values ('Cort', 'Lepere', 'Male', 'clepere2@e-recht24.de', '2024-02-28', 'China');

insert into car (make, model, price) values ('Chevrolet', 'Camaro', 10000.34);
insert into car (make, model, price) values ('Ford', 'Fusion', 20000.34);
```


### Inner Join/Join

**Inner Join** is used to combine records from two tables based on a related column between them. Join and Inner Join are the same. It will return only the common records between the two tables.

- To join two tables:

```sql
// SYNTAX:
SELECT * FROM <table_name> INNER JOIN <table_name> ON <table_name>.<column_name> = <table_name>.<column_name>;

SELECT <column_name>, <column_name>, <column_name> FROM <table_name> INNER JOIN <table_name> ON <table_name>.<column_name> = <table_name>.<column_name>;

// EXAMPLE:
SELECT * FROM person INNER JOIN car ON person.car_id = car.id; // Select all columns
SELECT person.first_name, person.last_name, car.make, car.model FROM person INNER JOIN car ON person.car_id = car.id; // Select specific columns
```

We can also do below when the column name is same in both tables:

```sql
// SYNTAX:
SELECT * FROM <table_name> JOIN <table_name> USING (<column_name>);

SELECT * FROM person JOIN car USING (car_id);
```

**USING** is used to specify the column name that is common in both tables.

The purpose of the inner join is to get the records that are common in both tables. If there is no common record, it will not return anything.

### Left Join

**Left Join** is used to combine records from two tables based on a related column between them. It will return all records from the left table and the matched records from the right table. The difference between inner join and left join is that join will return only the common records whereas left join will return all records from the left table.

- To left join two tables:

```sql
// SYNTAX:
SELECT * FROM <table_name> LEFT JOIN <table_name> ON <table_name>.<column_name> = <table_name>.<column_name>;

SELECT <column_name>, <column_name>, <column_name> FROM <table_name> LEFT JOIN <table_name> ON <table_name>.<column_name> = <table_name>.<column_name>;

// EXAMPLE:
SELECT * FROM person LEFT JOIN car ON person.car_id = car.id; // Select all columns

SELECT person.first_name, person.last_name, car.make, car.model FROM person LEFT JOIN car ON person.car_id = car.id; // Select specific columns
```

### Right Join

**Right Join** is used to combine records from two tables based on a related column between them. It will return all records from the right table and the matched records from the left table. The difference between inner  join and right join is that join will return only the common records whereas right join will return all records from the right table.

- To right join two tables:

```sql
// SYNTAX:

SELECT * FROM <table_name> RIGHT JOIN <table_name> ON <table_name>.<column_name> = <table_name>.<column_name>;

SELECT <column_name>, <column_name>, <column_name> FROM <table_name> RIGHT JOIN <table_name> ON <table_name>.<column_name> = <table_name>.<column_name>;

// EXAMPLE:

SELECT * FROM person RIGHT JOIN car ON person.car_id = car.id; // Select all columns

SELECT person.first_name, person.last_name, car.make, car.model FROM person RIGHT JOIN car ON person.car_id = car.id; // Select specific columns
```

### Deleting Records with Foreign Key

To delete a record from a table that is being referenced by another table, we need to delete the record from the referencing table first and then delete the record from the referenced table. That is for above example, we need to delete the record from the person table first and then delete the record from the car table.

- To delete a record from a table that is being referenced by another table:

```sql
// SYNTAX:
DELETE FROM <table_name> WHERE <column_name> = <value>; // Delete the record from the referencing table
DELETE FROM <table_name> WHERE <column_name> = <value>; // Delete the record from the referenced table


// EXAMPLE:
DELETE FROM person WHERE id = 1;
DELETE FROM car WHERE id = 1;
```

### Truncate

**Truncate** is used to delete all records from a table. It is faster than the delete command.

- To delete all records from a table:

```sql
// SYNTAX:
TRUNCATE <table_name>;

// EXAMPLE:
TRUNCATE person;
```

### Cascade

**CASCADE** is used to delete all records from a table that is being referenced by another table. It is helpful when we want to delete all records from the referencing table and the referenced table.

- To delete all records from a table that is being referenced by another table:

```sql
// SYNTAX:
DELETE FROM <table_name> WHERE <column_name> = <value> CASCADE;

// EXAMPLE:
DELETE FROM person WHERE id = 1 CASCADE;
```

### Exporting Query Results in CSV

- To export the query results in a CSV file:

```sql
// SYNTAX:
COPY (<query>) TO '<file_path>' DELIMITER ',' CSV HEADER;
or 
\copy (<query>) TO '<file_path>' DELIMITER ',' CSV HEADER;

// EXAMPLE:
COPY (SELECT * FROM person) TO '/Users/pradumnasaraf/Dev/Snippets/person.csv' DELIMITER ',' CSV HEADER;
or
\copy (SELECT * FROM person) TO './person.csv' DELIMITER ',' CSV HEADER;
```

:::note
`COPY` will not support the relative path. We need to provide the absolute path. If we want to use the relative path, we can use `\copy`.
:::

### Serial and Sequences

- To create a serial column:

```sql
// SYNTAX:
<column_name> SERIAL PRIMARY KEY;

// EXAMPLE:
id SERIAL PRIMARY KEY;
```

- To reset the sequence:

```sql
// SYNTAX:
ALTER SEQUENCE <sequence_name> RESTART WITH <value>;

// EXAMPLE:
ALTER SEQUENCE person_id_seq RESTART WITH 1;
```

### Postgres Extension

Postgres has some extensions that can be used to perform some specific operations. For eg, the benefit of using an extension like `uuid-ossp` is that it will generate a unique identifier for each record and that can be used as a primary key.

- To check the available extensions:

```sql
SELECT * FROM pg_available_extensions;
```

- To install an extension:

```sql
// SYNTAX:
CREATE EXTENSION IF NOT EXISTS <extension_name>;

// EXAMPLE:
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```

- To invoke the function of the extension:

First to check the available functions of the extension:

```sql
\df
```

Then to invoke the function:

```sql
// SYNTAX:
SELECT <function_name>();

// EXAMPLE:
SELECT uuid_generate_v4();
```

### UUID As Primary Key

- To create a table with UUID as a primary key:

```sql
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


CREATE TABLE person (
    person_id UUID PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR
    email VARCHAR(50) UNIQUE,
)

INSERT INTO person (person_id, first_name, last_name, email) VALUES (uuid_generate_v4(), 'John', 'Doe', 'test@test.com');
```

### Default Value

- To set a default value for a column in a table:

```sql
// SYNTAX:
CREATE TABLE <table_name> (
    <column_name> <data_type> DEFAULT <value>,
    <column_name> <data_type> DEFAULT <value>,
    <column_name> <data_type> DEFAULT <value>,
    .
    .
    <column_name> <data_type> DEFAULT <value>
);

// EXAMPLE:
CREATE TABLE person (
    id UUID NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR
    email VARCHAR(50) DEFAULT 'N/A'
);
```

### Index

**Index** is used to speed up the query performance. It is used to create an index on a column in a table.

- To create an index:

```sql
// SYNTAX:
CREATE INDEX <index_name> ON <table_name> (<column_name>);

// EXAMPLE:
CREATE INDEX person_email_index ON person (email);
```

- To drop an index:

```sql
// SYNTAX:
DROP INDEX <index_name>;

// EXAMPLE:
DROP INDEX person_email_index;
```

## Tools

Some of the tools that can be used to work with PostgreSQL

- [Mockaroo](https://www.mockaroo.com/): It is used to generate random data. We can generate data in different formats like JSON, CSV, SQL, etc.

