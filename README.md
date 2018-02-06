# JeroenVdb MacOS (dotfiles) setup

This repo contains my current laptop (Macbook, MacOS) setup. It contains dotfiles and scripts to get everything in place.

Dotfiles are often used by applications to store configurations. These dotfiles will be used by applications we install later.
Learn more about doffiles here: https://dotfiles.github.io/

## Structure

- `.aliases` and `.functions` handy shorthands for common commands, used by the shells (bash and Zsh)
- `.exports` system variables used by applications
- `.gitconfig` and `.gitignore` basic git configuration files
- `.macos` and `.osx` configuration files for MacOS and OSX

- `.zshrc` is loaded "sourced" every time a Zsh shell opens, contains Zsh specific config and afterwards loads `.bash_profile`
- `.bash_profile` is loaded "sourced" every time a Bash shell opens from a local computer, it contains our global shell config for both Zsh and Bash
- `.bashrc` is loaded "sourced" when you connect to the system via ssh (we ignore this pretty much and just load the main `.bash_profile` file)

- `brew-basic.sh` installs the most basic packages and applications we need everywhere
- `brew-development.sh` installs development related applications (check if you need it all)
- `brew-software.sh` installs general applications (check if you need it all)

- `nativefier/` run web applications in electron shells so they act as standalone desktop applications

## dotfiles

```bash
# download dotfiles and extract (or use git clone)

mkdir -p ~/Projects/dotfiles && cd "$_" && curl -L https://github.com/jeroenvdb/dotfiles/tarball/master | tar -xzv --strip-components 1

# symlink dotfiles to your home directory
cd ~/Projects/dotfiles && bootstrap-dotfiles-ln.sh;

# restart your shell
```

## Install Homebrew package manager (https://brew.sh/)

Homebrew is a source code package manager we use to install packages. We also tap `caskroom` (https://caskroom.github.io) so we can install full binaries (Spotify, Google Chrome, etc...) via `brew cask <name>`.

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
```

## Use Zsh instead of Bash

```bash
# install Zsh
brew install Zsh

# install Zsh package manager
brew install antigen

# add Zsh to the authorized shells list
echo "$(which zsh)" | sudo tee -a /etc/shells

# switch default shell tot Zsh
sudo chsh -s $(which zsh)
```

## Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults.

```bash
~/.macos
```

# Backup

- Atom: make sure to have the latest package.cson `Package Sync: Create package list`
- Have you updated any files in your $HOME folder? Copy them back to the git dotfiles repo and commit & push
- Update the `brew-*.sh` files: remove and add packages to keep this up-to-date. You can use `brew list` and `brew cask list`
- Backup Postman collections and environment

# Thanks to

All my thanks to [Mathias Bynens](https://mathiasbynens.be/) from which I originally forked the repository and all people who share there [dotfiles](https://dotfiles.github.io/).
