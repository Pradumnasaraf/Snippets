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
> ARRAY

- To push the elment at the left side of the array (It will create if it dosen't exists)

```bash
lpush <arrayname> <value to push>
lpush name jon
```
to right:

```bash
rpush <arrayname> <value to push>
```
- to get all the value from the array

```
lrange <keyname> <staring index> <ending indxex>
lrange name 0 -1
```

- To remove 1st item of array

```
LPOP friends
```

- To remove last item of array

```
RPOP friends
```

> SETS

- To add elemets in the set

```
SADD <set-key> "value"
```

- To get all the elements from the set

```
SMEMEBERS <set-key>
```
- TO remove an element from a set

```
SREM <set-key> <value>
SREM color red
```

> HASHES

- To add a key in a set

```bash
HSET <hash-key> <propery name> <value>
HSET person name ron
```
- To get a key value pair 

```
HGET <hash-key> <propery name>
HGET person name
```

- To get all the properties of a set

```
HGETALL <hash-key>
HGETALL person
```

- To delete a property in a set

```
HGETALL <hash-key> <property name>
HDEL pseron age
```

- To check propert exits of not

```
HEXISTS <hash-key> <property name>
```


