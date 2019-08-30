# MacOS (dotfiles) setup

This repo contains my current laptop (Macbook, MacOS) setup. It contains dotfiles, software and scripts to get everything in place and up-and-running.

Dotfiles are often used by applications to store configurations. These dotfiles will be used by applications we install later.
Learn more about dotfiles here: https://dotfiles.github.io/

## Structure

All config files and directories are located in the `configs` folder.

- `.aliases` and `.functions` handy shorthands for common commands, used by the shells (bash and Zsh)
- `.exports` system variables used by applications
- `.gitconfig` and `.gitignore` basic git configuration files
- `.macos` and `.osx` configuration files for MacOS and OSX

- `.zshrc` is loaded "sourced" every time a Zsh shell opens, contains Zsh specific config and afterwards loads `.bash_profile`
- `.bash_profile` is loaded "sourced" every time a Bash shell opens from a local computer, it contains our global shell config for both Zsh and Bash
- `.bashrc` is loaded "sourced" when you connect to the system via ssh (we ignore this pretty much and just load the main `.bash_profile` file)
- `iterm2_preferences` iTerm2 preferences, check Terminal section to link and load the correct settings
- `.vscode` VS Code extensions
- `VSCodeUser` VS Code user specific preferences (keybindings, settings, snippets, extension settings)

Some automated scripts and documentation

- `bootstrap-dotfiles-ln.sh` symlink dotfiles and configs to the files in this repository
- `brew-basic.sh` installs the most basic packages and applications we need on every setup
- `brew-development.sh` installs development related applications (check if you need it all)
- `brew-software.sh` installs general applications (check if you need it all)

## dotfiles

```bash
# download dotfiles and extract (or use git clone)
mkdir -p ~/Projects/dotfiles && cd "$_" && curl -L https://github.com/jeroenvdb/dotfiles/tarball/master | tar -xzv --strip-components 1

# symlink dotfiles to your home directory
cd ~/Projects/dotfiles && bootstrap-dotfiles-ln.sh;

# restart your shell

# check all active symlinks in your $HOME directory
find ~ -maxdepth 1 -type l -ls
```

## Package Manager: Homebrew (https://brew.sh/)

Homebrew is a source code package manager we use to install packages. We also tap `caskroom` (https://caskroom.github.io) so we can install full binaries (Spotify, Google Chrome, etc...) via `brew cask <name>`.

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask # for full binaries
brew tap caskroom/versions # for specific versions like google-chrome-canary
```

## Shell: Use Zsh instead of Bash

```bash
# install Zsh
brew install Zsh

# install Zsh package manager
brew install antigen

# add Zsh to the authorized shells list
echo "$(which zsh)" | sudo tee -a /etc/shells

# switch this users default shell tot Zsh (don't sudo, this wil try to change the root shell)
chsh -s $(which zsh)
```

## Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults.

```bash
~/.macos
```

## Terminal: iTerm2

Install iTerm 2 and run the following commands to use the perferences included in this repository.

```
# install iterm2
brew cask install iterm2

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/Projects/dotfiles/configs/iterm2_preferences"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

```

Source: http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/

# Other specific setup documentation

- [Web Desktop Applications with nativefier](nativefier/nativefier.md): run web applications in electron shells so they act as standalone desktop applications
- [Mediacenter setup](mediacenter.md)

# Backup

- Have you updated any files in your $HOME folder? Copy them back to the git dotfiles repo and commit & push
- Update the `brew-*.sh` files: remove and add packages to keep this up-to-date. You can use `brew list` and `brew cask list`
- Backup Postman collections and environment

# Thanks to

All my thanks to [Mathias Bynens](https://mathiasbynens.be/) from which I originally forked the repository and all people who share there [dotfiles](https://dotfiles.github.io/).
