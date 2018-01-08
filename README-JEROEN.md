# JeroenVdb dotfiles

## Install

### Get dotfiles (https://github.com/jeroenvdb/dotfiles)

```bash
# create default projects dir
mkdir -p ~/Projects/dotfiles

# download dotfiles and extract (or use git clone)
cd ~/Projects/dotfiles && curl -L https://github.com/jeroenvdb/dotfiles/tarball/master | tar -xzv --strip-components 1
```

### Install brew package manager (https://brew.sh/)

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Setup shell

```bash
# install Zsh and use it as the default $SHELL
brew install zsh

# add zsh to the authorized shells list
echo "$(which zsh)" | sudo tee -a /etc/shells

# switch default shell tot zsh
sudo chsh -s $(which zsh)
```

#### Use ZSH + oh-my-zsh + Hyper

...

### Get dotfiles in place

```bash
bash bootstrap.sh
```

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

# Thanks to...

All my thanks to mathiasbynens for the forked dotfiles repository: https://github.com/mathiasbynens/dotfiles
