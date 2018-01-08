# JeroenVdb dotfiles

## Install

### Get dotfiles

```bash
# create default projects dir
mkdir -p ~/Projects/dotfiles

# download dotfiles and extract (or use git clone)
curl -L https://github.com/jeroenvdb/dotfiles/tarball/master | tar -xzv --strip-components 1
```

### Setup shell

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
