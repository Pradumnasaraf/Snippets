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

- To create a new database:

```sql
CREATE DATABASE <database_name>;
CREATE DATABASE test;
```

The `;` at the end is important and its used to execute the command.

- To connect to a database:

The connecting is more like switching to a database.

```sql
\c <database_name>
\c test
```

