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
    <column_name> <data_type> <constraints>
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

- To select distinct records:

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

- To select a limited number of records and skip a number of records:

```sql

// SYNTAX:
SELECT * FROM <table_name> OFFSET <number> FETCH FIRST <number> ROWS ONLY;

// EXAMPLE:
SELECT * FROM person OFFSET 10 FETCH FIRST 10 ROWS ONLY;
```

### In 

**IN** is used to specify multiple values in a WHERE clause. It's kind of a shorthand for multiple OR conditions.

- To select records based on multiple values:

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

## Tools

Some of the tools that can be used to work with PostgreSQL

- [Mockaroo](https://www.mockaroo.com/): It is used to generate random data. We can generate data in different formats like JSON, CSV, SQL, etc.

