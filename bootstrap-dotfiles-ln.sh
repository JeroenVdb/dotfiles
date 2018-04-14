#!/usr/bin/env bash

echo "Create symlinks: start"

rm -rf ~/.aliases
ln -s -v ~/Projects/dotfiles/.aliases ~/.aliases

rm -rf ~/.atom
ln -s -v ~/Projects/dotfiles/.atom/ ~/.atom

rm -rf ~/.vscode
ln -s -v ~/Projects/dotfiles/.vscode/ ~/.vscode

rm -rf ~/Library/Application\ Support/Code/User
ln -s -v ~/Projects/dotfiles/VSCodeUser ~/Library/Application\ Support/Code/User

rm -rf ~/.bash_profile
ln -s -v ~/Projects/dotfiles/.bash_profile ~/.bash_profile

rm -rf ~/.bashrc
ln -s -v ~/Projects/dotfiles/.bashrc ~/.bashrc

rm -rf ~/.exports
ln -s -v ~/Projects/dotfiles/.exports ~/.exports

rm -rf ~/.functions
ln -s -v ~/Projects/dotfiles/.functions ~/.functions

rm -rf ~/.git
ln -s -v ~/Projects/dotfiles/.git/ ~/.git

rm -rf ~/.gitconfig
ln -s -v ~/Projects/dotfiles/.gitconfig ~/.gitconfig

rm -rf ~/.gitignore
ln -s -v ~/Projects/dotfiles/.gitignore ~/.gitignore

rm -rf ~/.hyper.js
ln -s -v ~/Projects/dotfiles/.hyper.js ~/.hyper.js

rm -rf ~/.inputrc
ln -s -v ~/Projects/dotfiles/.inputrc ~/.inputrc

rm -rf ~/.macos
ln -s -v ~/Projects/dotfiles/.macos ~/.macos

rm -rf ~/.osx
ln -s -v ~/Projects/dotfiles/.osx ~/.osx

rm -rf ~/.zshrc
ln -s -v ~/Projects/dotfiles/.zshrc ~/.zshrc

echo "Create symlinks: done"

echo "Active symlinks in $HOME directory"
find ~ -maxdepth 1 -type l -ls
