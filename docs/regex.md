---
sidebar_position: 6
title: Regex
slug: /regex
---

Regular expressions are a powerful tool for pattern matching and text processing. They are used in many programming languages and tools like grep, sed, awk, and more.

### Resources

- [https://regexr.com/](https://regexr.com/)
- [https://regexlearn.com/learn/regex101](https://regexlearn.com/learn/regex101)

### Syntax

```bash
/pattern/modifiers
```

### Ranges:
- `[abc]` : Matches `a`, `b`, or `c`
- `[^abc]` : Matches any character except `a`, `b`, or `c`
- `[a-z]` : Matches any lowercase letter
- `[A-Z]` : Matches any uppercase letter
- `[a-zA-Z]` : Matches any letter
- `[0-9]` : Matches any digit
- `[a-zA-Z0-9]` : Matches any letter or digit

### Quantifiers:
- `a` : Matches the string `a`
- `a+` : Matches the string with one or more `a`s like `a`, `aa`, `aaa`, `aaaa`, `aaaaa`, ....
- `a*` : Matches the string with zero or more `a`s like "", `a`, `aa`, `aaa`, `aaaa`, `aaaaa`, ....
- `a?` : Matches the string with zero or one `a`s like "", `a`
- `a{3}` : Matches the string `aaa`
- `abc` : Matches the string `abc`
- `[ ] = []{1}` : Matches exactly one occurrence
- `[ ]?` : Matches zero or one occurrence
- `[ ]+` : Matches one or more occurrences
- `[ ]*` : Matches zero or more occurrences
- `[ ]{n}` : Matches exactly `n` occurrences
- `[ ]{n,}` : Matches `n` or more occurrences
- `[ ]{n,m}` : Matches between `n` and `m` occurrences

### Metacharacters (shortcuts):
- `\d` : Matches any digit, `[0-9]`
- `\D` : Matches any non-digit, `[^0-9]`
- `\w` : Matches any word character, `[a-zA-Z0-9_]`
- `\W` : Matches any non-word character, `[^a-zA-Z0-9_]`
- `\s` : Matches any whitespace character, `[\t\n\f\r\p{Z}]`
- `\S` : Matches any non-whitespace character, `[^\t\n\f\r\p{Z}]`

### Anchors:
- `^` : Matches the start of the string
- `$` : Matches the end of the string
- `\b` : Matches a word boundary
- `\B` : Matches a non-word boundary

### Groups:
- `( )` : Used for grouping
- `(this|that)` : Matches `this` or `that`

### Order of Grouping:

`\1` : Matches the same text as most recently matched by the 1st capturing group
`\2` : Matches the same text as most recently matched by the 2nd capturing group

Example:

To match `ha-ha,haa-haa`: 

```regex
(ha)-\1,(haa)-\2
```

## Lookarounds:

- `(?=...)` : Positive lookahead
- `(?!...)` : Negative lookahead
- `(?<=...)` : Positive lookbehind
- `(?<!...)` : Negative lookbehind

### Mixed:

- `.` : Matches any character except newline
- `..a` : Matches any three-character string ending with `a`
