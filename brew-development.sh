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
