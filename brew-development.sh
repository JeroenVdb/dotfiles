#!/usr/bin/env bash

####
# Node
# install node version manager and use a specific version
####

brew install nvm

nvm install 8
nvm use 8
# nvm ls # list local versions
# nvm ls-remote # list remote available versions

####
# Java
####

brew cask install java8
brew install maven

# Python
# Upgrade default python to python3
brew upgrade python
# From Homebrew:
# If you need Homebrew's Python 2, `brew install python@2`.

# aws cli
# official documentation says: `pip install awscli --upgrade --user`
# but also possible via brew
brew install awscli