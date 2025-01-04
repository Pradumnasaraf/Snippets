---
sidebar_position: 1
title: Node.js
description: Learn about Node.js and its benefits.
tags: ["Node.js", "JavaScript", "Runtime Environment"]
keywords: ["Node.js", "JavaScript", "Runtime Environment"]
slug: /
---

Node.js is JavScript runtime environment. It is built on Chrome's V8 JavaScript engine. 

### NPM

NPM is a package manager for Node.js packages. It is the default package manager for the JavaScript runtime environment Node.js. It consists of a command line client, also called npm, and an online database of public and paid-for private packages, called the npm registry.

### Commands

- Check Node version

```bash
node -v
```

- Check NPM version

```bash
npm -v
```

- Initialize your project and create `package.json` file. Use `-y` flag to skip questions: 

```bash
npm init -y
```

- Install a package and save it to `package.json` file:

```bash
node install <package-name>
```
or

```bash
node i <package-name>
```

- Install a specific version of a package and save it to `package.json` file:

```bash
node install <package-name>@version-no
```

- Install a package globally:

```bash
node install <package-name> -g
```

- Install a adding a package to `package.json` file as a dev dependency.

```bash
npm install -D <package-name>
```

- Install all the packages from `package.json` file.

```bash
npm install
```

- Install the packages from `package-lock.json` file without updating the file.

```bash
npm ci
```

- Uninstall a package

```bash
npm uninstall <package-name>
```

- Install a package without saving it to `package.json` file:

```bash
npx <package-name>
```

- Check version of a package

```bash
npm view <package-name> version
```
- Update the packages

```bash
npm update
```

- Update the packages to the latest major version

```bash
npm update <package-name> --major
```

- Update the packages to the latest minor version

```bash
npm update <package-name> --minor
```

- Update the packages to the latest version

```bash
npm update <package-name> --latest
```