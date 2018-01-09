# JeroenVdb Macos and dotfiles setup

## dotfiles

Dotfiles are often used by applications to store configurations. Because we want the same configuration across devices we store them in this repository. These dotfiles will be use by applications we install later.
Download the files and run `bootstrap.sh` to `rsync` them to your home folder. When changing configurations in the dotfiles folder you should re-run `bootstrap.sh` re resync them.

```bash
# download dotfiles and extract (or use git clone)

mkdir -p "~/Projects/dotfiles" && cd "$_" && curl -L https://github.com/jeroenvdb/dotfiles/tarball/master | tar -xzv --strip-components 1
```

```bash
cd "~/Projects/dotfiles" && bash bootstrap.sh;

# restart your shell
```

## Install brew package manager (https://brew.sh/)

Brew is a software package manager we use to install software.

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Set(up) Zsh(ell)

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

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
~/.macos
```

# Thanks to...

All my thanks to mathiasbynens for the forked dotfiles repository: https://github.com/mathiasbynens/dotfiles
