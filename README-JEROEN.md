# JeroenVdb MacOS (dotfiles) setup

## dotfiles

Dotfiles are often used by applications to store configurations. Because we want the same configuration across devices we store them in this repository. These dotfiles will be used by applications we install later.
Download the files and run `bootstrap.sh` to `rsync` them to your home folder. When changing configurations in the dotfiles folder you should re-run `bootstrap.sh` to resync them.

- `.aliases` handy shorthands for commands
- `.exports` system variables used by applications
- `.gitconfig` and `.gitignore` basic git configuration files
- `.macos` and `.osx` configuration files for MacOS and OSX

```bash
# download dotfiles and extract (or use git clone)

mkdir -p "~/Projects/dotfiles" && cd "$_" && curl -L https://github.com/jeroenvdb/dotfiles/tarball/master | tar -xzv --strip-components 1
```

```bash
cd "~/Projects/dotfiles" && bash bootstrap.sh;

# restart your shell
```

## Install Homebrew package manager (https://brew.sh/)

Homebrew is a software package manager we use to install (small) packages. We also tap caskroom (https://caskroom.github.io) so we can install binaries via `brew`.

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
```

## Use Zsh instead of Bash

```bash
# install Zsh and use it as the default $SHELL
brew install zsh

# add zsh to the authorized shells list
echo "$(which zsh)" | sudo tee -a /etc/shells

# switch default shell tot zsh
sudo chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults.

```bash
~/.macos
```

# Thanks to...

All my thanks to mathiasbynens for the forked dotfiles repository: https://github.com/mathiasbynens/dotfiles

Note to self: don't remove lines so we can compare/sync with upstream repo.
