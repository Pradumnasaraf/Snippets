- To add a key:

```bash
SET <key> <value>
```

- To get a value out of a key:

```bash
GET <key> 
```
- To delete a key:

```bash
DEL <key> <value>
```

- To check if the key exists or not:

```bash
EXISTS <key>
```

- To get all the keys

```bash
GET *
```

- To delte all the keys

```bash
flushall
```

-To set the Keys with expiration

```bash
SET name pradumna EX 10
```
- or set to existing keys by

```
ttl <key> <time to live in seconds>
```

