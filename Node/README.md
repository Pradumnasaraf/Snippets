- Check node version

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

- Install a package:

```bash
node install <package-name>
```
or

```bash
node i <package-name>
```
- Install a package with a particular version:

```bash
node install <package-name>@version-no
```

- Install a package globally.

```bash
node install <package-name> -g
```

- Install a package as a Dev Dependency.

```bash
node install -D <package-name>
```

- Run a packange without installing

```bash
npx <package-name>
```

- Check version of a package

```bash
npm view <package-name> vsersion
```
- Update the packages

```
npm update
```