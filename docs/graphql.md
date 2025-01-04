---
sidebar_position: 2
title: GraphQL
description: Learn about GraphQL and its benefits.
tags: ["GraphQL", "API", "Query Language"]
keywords: ["GraphQL", "API", "Query Language"]
slug: "/graphql"
---

GraphQL is a query language for APIs and a runtime for fulfilling those queries with your existing data. It gives clients the power to ask for exactly what they need and nothing more.

It reduces the fetching of data from multiple endpoints and reduces the over fetching of data.

### Resources

- [GraphQL](https://graphql.org/)
- Official docs for [ref](https://graphql.org/learn/queries/)

### Queries

Queries are used to fetch data from the server. Queries are always sent as a POST request to the server.

Syntax:

```graphql
query {
  field {
    ...
  }
}
```

Example:

```graphql
query {
  users {
    firstName
    age
  }
}
```

#### Operation name

Operation name is used to give a name to the query, mutation or subscription. It is optional but it is a good practice to give a name to the query, mutation or subscription.

Syntax:

```graphql
query nameOfQuery {
  field {
    ...
  }
}
```

```graphql
query findAUser {
  # findAUser is the name of the query
  users {
    firstName
    age
  }
}
```

### Mutations

Mutations are used to modify data on the server. Mutations are always sent as a POST request to the server.

Syntax:

```graphql
mutation {
  field {
    ...
  }
}
```

Example:

```graphql
mutation {
  addUser(firstName: "John", age: 30) {
    #we are passing arguments to the mutation
    id
    firstName
    age
  }
}
```

### Arguments

Arguments are used to pass data to queries and mutations. Arguments are always passed inside the parenthesis.

Syntax:

```graphql
field(argument: value) {
  ...
}
```

Example:

```graphql
query {
  user(id: "1") {
    firstName
    age
  }
}
```

### Variables

Variables are used to pass data to queries and mutations. Variables are always passed inside the parenthesis. Variables are always defined with a `$` sign and it's defined at the top of the query.

Syntax:

```graphql
query nameOfQuery($variable: Type) {
  field(argument: $variable) {
    ...
  }
}
```

```graphql
query findAUser($id: ID!) {
  # $id is the variable
  user(id: $id) {
    firstName
    age
  }
}
```

To pass the variable to the query, we need to pass it as a JSON object.

```json
{
  "id": "1"
}
```

#### Default variables

We can also set default values to the variables. If we don't pass the variable, then the default value will be used.

Example:

```graphql
query findAUser($id: ID = "1") {
  # $id is the variable
  user(id: $id) {
    firstName
    age
  }
}
```

### Alias

Alias let us rename the result of a field to anything we want. In the example below, we are renaming the `name` field to `title`. This is helpful when we have multiple fields with the same name.

Syntax:

```graphql
field: alias
```

Example:

```graphql
query {
  company(id: "1") {
    name
  }
}
```

to

```graphql
query {
  company(id: "1") {
    title: name # alias
  }
}
```

or

```graphql
query {
  apple: company(id: "1") {
    name
    employees {
      firstName
    }
  }
  google: company(id: "2") {
    name
    employees {
      firstName
    }
  }
}
```

### Fragments

Fragments let us construct sets of fields, and then include them in queries where we need to. This is helpful when we have multiple queries with the same fields.

Syntax:

```graphql
fragment nameOfFragment on Type {
  field
}
```

Example:

```graphql
query {
  apple: company(id: "1") {
    ...companyDetails
  }
  google: company(id: "2") {
    ...companyDetails
  }
}

fragment companyDetails on Company {
  name
  employees {
    firstName
  }
}
```

Now we can use the `companyDetails` fragment anywhere we want.

### Directives

Directives can be used to change the execution behavior of fields or fragments. Directives can be used to `include` or `skip` a field or fragment. Directives are always preceded by a `@` sign. It's like an if statement.

Syntax:

```graphql
field @directive
```

#### include

```graphql
field @include(if: Boolean)
```

Example:

```graphql
query {
  user(id: "1") {
    firstName
    age @include(if: true) # if true, then include the age field
  }
}
```

We can also pass variables to the directives.

```graphql
query getUser($includeAge: Boolean!) {
  user(id: "1") {
    firstName
    age @include(if: $includeAge) # if true, then include the age field
  }
}
```

```json
{
  "includeAge": true
}
```

#### skip

```graphql
field @skip(if: Boolean)
```

Example:

```graphql
query {
  user(id: "1") {
    firstName
    age @skip(if: true) # if true, then skip the age field
  }
}
```

We can also pass variables to the directives.

```graphql
query getUser($skipAge: Boolean!) {
  user(id: "1") {
    firstName
    age @skip(if: $skipAge) # if true, then skip the age field
  }
}
```

```json
{
  "skipAge": true
}
```
