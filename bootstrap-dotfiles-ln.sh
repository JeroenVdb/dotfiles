#!/usr/bin/env bash

# make sure I still know what this script will do
read -p "This script will remove already existing dotfiles and config directories before symlinking them to this repositories directories and files, are you OK with this? " -n 1 -r
echo # newline
if [[ $REPLY =~ ^[Yy]$ ]]; then
	# do dangerous stuff, no exit
	echo "Hope you know what you are doing ;-)"
else
	echo "Exiting..."
	exit 1
fi

echo "Create symlinks: start"

rm -rf ~/.aliases
ln -s -v ~/Projects/dotfiles/configs/.aliases ~/.aliases

rm -rf ~/.bash_profile
ln -s -v ~/Projects/dotfiles/configs/.bash_profile ~/.bash_profile

rm -rf ~/.bashrc
ln -s -v ~/Projects/dotfiles/configs/.bashrc ~/.bashrc

rm -rf ~/.exports
ln -s -v ~/Projects/dotfiles/configs/.exports ~/.exports

rm -rf ~/.functions
ln -s -v ~/Projects/dotfiles/configs/.functions ~/.functions

rm -rf ~/.git
ln -s -v ~/Projects/dotfiles/configs/.git/ ~/.git

rm -rf ~/.gitconfig
ln -s -v ~/Projects/dotfiles/configs/.gitconfig ~/.gitconfig

rm -rf ~/.gitignore
ln -s -v ~/Projects/dotfiles/configs/.gitignore ~/.gitignore

rm -rf ~/.hyper.js
ln -s -v ~/Projects/dotfiles/configs/.hyper.js ~/.hyper.js

rm -rf ~/.inputrc
ln -s -v ~/Projects/dotfiles/configs/.inputrc ~/.inputrc

rm -rf ~/.macos
ln -s -v ~/Projects/dotfiles/configs/.macos ~/.macos

rm -rf ~/.osx
ln -s -v ~/Projects/dotfiles/configs/.osx ~/.osx

rm -rf ~/.zshrc
ln -s -v ~/Projects/dotfiles/configs/.zshrc ~/.zshrc

echo "Create symlinks: done"

echo "Active symlinks in $HOME directory"
find ~ -maxdepth 1 -type l -ls
