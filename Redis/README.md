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

- To set the Keys with expiration

```bash
SET name pradumna EX 10
```
- or set to existing keys by

```
ttl <key> <time to live in seconds>
```
or
```

setex <key-name> <time-of-expiration-sec> <value>
```

- or set to existing keys by

```
ttl <key> <time to live in seconds>
```

- To push the elment at the left side of the array (It will create if it dosen't exists)

```bash
lpush <arrayname> <value to push>
```
to right:

```bash
rpush <arrayname> <value to push>
```
- to get all the value from the array

```
lrange friends <staring index> <ending indxex>
```
