# JeroenVdb MacOS (dotfiles) setup

Dotfiles are often used by applications to store configurations. Because we want the same configuration across devices we store them in this repository. These dotfiles will be used by applications we install later.
Download the files and run `bootstrap.sh` to `rsync` them to your home folder. When changing configurations in the dotfiles folder you should re-run `bootstrap.sh` to resync them.

## Structure

- `.aliases` and `.functions` handy shorthands for common commands, used by the shells (bash and Zsh)
- `.exports` system variables used by applications
- `.gitconfig` and `.gitignore` basic git configuration files
- `.macos` and `.osx` configuration files for MacOS and OSX

- `.zshrc` is loaded "sourced" every time a Zsh shell opens, contains Zsh specific config
- `.bash_profile` is loaded "sourced" every time a Bash shell opens from a local computer, it contains our global shell config for both Zsh and Bash
- `.bashrc` is loaded "sourced" when you connect to the system via ssh (we ignore this pretty much and just load the main `.bash_profile` file)

- `brew-cli-basic.sh` installs small handy cli packages
- `brew-development.sh` installs development related applications
- `brew-software.sh` installs general applications

## dotfiles

```bash
# download dotfiles and extract (or use git clone)

mkdir -p "~/Projects/dotfiles" && cd "$_" && curl -L https://github.com/jeroenvdb/dotfiles/tarball/master | tar -xzv --strip-components 1

# rsync dotfiles to your home directory
cd ~/Projects/dotfiles && bootstrap.sh;

# create symlinks for some files (is this easier to maintain then rsync?)
cd ~/Projects/dotfiles && bootstrap-ln.sh;

# restart your shell
```

## Install Homebrew package manager (https://brew.sh/)

Homebrew is a source code package manager we use to install packages. We also tap `caskroom` (https://caskroom.github.io) so we can install full binaries via `brew cask <name>`.

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

# Thanks to

All my thanks to [Mathias Bynens](https://mathiasbynens.be/) from which I originally forked the repository.
And other dotfiles:
- https://github.com/paulirish/dotfiles/
- https://github.com/paulmillr/dotfiles/
- https://github.com/alrra/dotfiles/
