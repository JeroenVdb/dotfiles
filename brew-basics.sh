#!/usr/bin/env bash

#####
### Install command-line tools using Homebrew.
#####

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

brew install wget

# Remove outdated versions from the cellar.
brew cleanup

# Install trash cli to move files and directories to the trash instead of using `rm` -> https://github.com/sindresorhus/trash-cli
npm install --global trash-cli

# Upgrade default python to python3
brew upgrade python
# From Homebrew:
# If you need Homebrew's Python 2, `brew install python@2`.

#####
### Install Restart/Sleep/Logout/Shutdown shortcuts in Spotlight and move them to /Applications
#####
LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/siong1987/shortcuts/releases/latest)
LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
ARTIFACT_URL="https://github.com/siong1987/shortcuts/releases/download/$LATEST_VERSION/restart.sleep.shutdown.logout.lock.zip"

echo "Download $ARTIFACT_URL"
curl -JOL -v "$ARTIFACT_URL"

unzip -a -v restart.sleep.shutdown.logout.lock.zip -d /tmp/restart.sleep.shutdown.logout.lock
rsync -a -v /tmp/restart.sleep.shutdown.logout.lock/system/ ~/Applications --exclude .DS_Store
