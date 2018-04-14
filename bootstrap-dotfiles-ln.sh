#!/usr/bin/env bash

echo "Create symlinks: start"

ln -s -v ~/Projects/dotfiles/.aliases ~/.aliases
ln -s -v ~/Projects/dotfiles/.atom/ ~/.atom
ln -s -v ~/Projects/dotfiles/.vscode/ ~/.vscode
ln -s -v ~/Projects/dotfiles/VSCodeUser ~/Library/Application\ Support/Code/User
ln -s -v ~/Projects/dotfiles/.bash_profile ~/.bash_profile
ln -s -v ~/Projects/dotfiles/.bashrc ~/.bashrc
ln -s -v ~/Projects/dotfiles/.exports ~/.exports
ln -s -v ~/Projects/dotfiles/.functions ~/.functions
ln -s -v ~/Projects/dotfiles/.git/ ~/.git
ln -s -v ~/Projects/dotfiles/.gitconfig ~/.gitconfig
ln -s -v ~/Projects/dotfiles/.gitignore ~/.gitignore
ln -s -v ~/Projects/dotfiles/.hyper.js ~/.hyper.js
ln -s -v ~/Projects/dotfiles/.inputrc ~/.inputrc
ln -s -v ~/Projects/dotfiles/.macos ~/.macos
ln -s -v ~/Projects/dotfiles/.osx ~/.osx
ln -s -v ~/Projects/dotfiles/.zshrc ~/.zshrc

echo "Create symlinks: done"

echo "Active symlinks in $HOME directory"
find ~ -maxdepth 1 -type l -ls
