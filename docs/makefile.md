---
sidebar_position: 4
title: Makefile
description: Learn about Makefile and its benefits.
tags: ["Makefile", "Build Tool", "Automation"]
keywords: ["Makefile", "Build Tool", "Automation"]
slug: "/makefile"
---

Makefile is a tool which controls the generation of executables and other non-source files of a program from the program's source files.

To run the Makefile, you need to run `make <target>`. For example, to run the `build` target, you need to run `make build`.

Syntax:

```makefile
target: dependencies
    commands
```

Example:

```makefile
build:
    go build -o bin/main main.go
```

### Targets

Targets are the commands that you want to run. They are the name of the commands that you want to run. For example, `build` is a target in the above example.


### Variables

Variables are used to store data. To define a variable, you need to use the `=` operator. To use a variable, you need to use the `${variable}` syntax.

Example:

```makefile
NAME = "John Doe"

build:
    go build -o bin/main main.go
    echo ${NAME}
```

### chaining of targets.

When a targets depends on other targets, you can chain them.

```makefile
IMAGE=Pradumnasaraf/hello-world
TAG=latest

build:
    docker build -t $(IMAGE):$(TAG) .

publish: build
    docker push $(IMAGE):$(TAG)
```

