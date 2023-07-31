## Homebrew

Homebrew is a package manager for macOS. It allows you to install and manage packages and applications from the command line.

### Documentation

- [Homebrew](https://brew.sh/)
- [Homebrew Documentation](https://docs.brew.sh/)

### Installation

- Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Keywords

- **Formulae** - A formula is a package definition written in Ruby. It tells Homebrew how to download, configure, and install a package.

- **Casks** - A cask is a package that installs an application on your system. It is a way to install GUI applications on your system.

- **Taps** - A tap is a third-party repository for Homebrew. It is a collection of formulae and/or casks.

- **Bottles** - A bottle is a pre-built binary package for a formula. It is a way to install a formula without building it from source.

- **Kegs** - A keg is a folder that contains all the files of a formula or cask. It is the installation prefix of a formula or cask.

- **Cellar** - A cellar is a folder that contains all the kegs. It is the installation prefix of Homebrew.

- **Brewfile** - A Brewfile is a text file that contains a list of formulae and/or casks. It is a way to install multiple packages at once.

### Commands

- Check Homebrew version

```bash
brew -v
```

- Update Homebrew

```bash
brew update
```

- Install a package

```bash
brew install <package-name>
```

- Uninstall a package

```bash
brew uninstall <package-name>
```

- Upgrade a package

```bash
brew upgrade <package-name>
```

- Upgrade all packages

```bash
brew upgrade
```

- List all installed packages

```bash
brew list
```

- List all the casks

```bash
brew list --cask
```

- Search for a package

```bash
brew search <package-name>
```

- Check if a package is installed

```bash
brew list | grep <package-name>
```

- Check if a cask is installed

```bash
brew list --cask | grep <package-name>
```

- Check version of a package

```bash
brew info <package-name>
```

- Check version of a cask

```bash
brew info --cask <package-name>
```

- Check outdated packages

```bash
brew outdated
```

- Check outdated casks

```bash
brew outdated --cask
```

- Stop a formula from being updated

```bash
brew pin <package-name>
```

- Unpin a formula

```bash
brew unpin <package-name>
```

- Create a Brewfile

```bash
brew bundle dump
```

- Install packages from a Brewfile

```bash
brew bundle install
```

- Update packages from a Brewfile

```bash
brew bundle dump --force
```

- Cleanup the system packages according to the Brewfile

```bash
brew bundle cleanup --force
```