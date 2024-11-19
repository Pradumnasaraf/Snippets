---
sidebar_position: 7
title: PostgreSQL
slug: /postgresql
---

## Database

A database is a collection of data. It is a place where data is stored. It is used to store, retrieve, update and delete data. It is used to perform all types of operations on the data. Examples of databases are MySQL, PostgreSQL, Oracle, SQL Server, etc.

## Database vs Database Management System (DBMS)

A database is a collection of data whereas a database management system (DBMS) is a software that is used to manage the database. It is used to store, retrieve, update and delete data. It is used to perform all types of operations on the data.

## Relational Database Management System (RDBMS)

A relational database management system (RDBMS) is a type of DBMS that stores data in a structured format. It stores data in tables. Each table has rows and columns. Each row represents a record and each column represents a field.

## PostgreSQL

PostgreSQL is an open-source relational database management system (RDBMS). It is used to store and retrieve data in a structured format. It is used to perform all types of operations on the database.

## SQL

SQL is a standard language for storing, manipulating and retrieving data in databases. It is used to perform all types of operations on the database.

## PostgreSQL Vs SQL

PostgreSQL is a relational database management system (RDBMS) whereas SQL is a standard language for storing, manipulating and retrieving data in databases.


### Data Types

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

- To get help:

```sql
\?
```

- To list all databases:

```sql
\l
```

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
DROP DATABASE <database_name>;
DROP DATABASE test;
```

:::warning
The `DROP` command is used to delete the database and all the data in it. It is not recommended to use this command in the production environment.
::: 

- To create a new table (Without Constrains, not recommended):

```sql
CREATE TABLE <table_name> (
    <column_name> <data_type>,
    <column_name> <data_type>,
    .
    .
    <column_name> <data_type> <constraints>
);

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
DROP TABLE <table_name>;
DROP TABLE person;
```

:::warning
The `DROP` command is used to delete the table and all the data in it. It is not recommended to use this command in the production environment.
:::

- Create a new table with constraints:

```sql
CREATE TABLE <table_name> (
    <column_name> <data_type> <constraints>,
    <column_name> <data_type> <constraints>,
    <column_name> <data_type> <constraints>,
    .
    .
    <column_name> <data_type> <constraints>
);

CREATE TABLE person (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(50) NULL
);
```

- To insert data/records into a table:

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
