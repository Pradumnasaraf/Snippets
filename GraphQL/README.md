## GraphQL

GrapgQL is a query language for APIs and a runtime for fulfilling those queries with your existing data. It gives clients the power to ask for exactly what they need and nothing more.

It reduces the fetching of data from multiple endpoints and reduces the over fetching of data.

### Queries

Queries are used to fetch data from the server. Queries are always sent as a POST request to the server.

```graphql
query {
  user(id: "23") { # we are passing arguments to the query
    firstName
    age
  }
}
```

We can aslo give queries a name and same for mutations. This is helpful when we have multiple queries in a single file.

```graphql
query findUser {
  # name of the query
  user(id: "23") {
    firstName
    age
  }
}
```

### Mutations

Mutations are used to modify data on the server. Mutations are always sent as a POST request to the server.


```graphql
mutation {
  addUser(firstName: "John", age: 30) {  #we are passing arguments to the mutation
    id
    firstName
    age
  }
}
```

### Alias

Alias let us rename the result of a field to anything we want. In the example below, we are renaming the `name` field to `title`. This is helpful when we have multiple fields with the same name.

Syntax:

```graphql
alias: field
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
