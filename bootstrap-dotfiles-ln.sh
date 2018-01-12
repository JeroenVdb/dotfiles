#!/usr/bin/env bash

echo "Create symlinks: start"
# make symlink so ~/.atom folder points to ~/Projects/dotfiles/.atom folder
ln -s -v ~/Projects/dotfiles/.atom ~/.atom
echo "Create symlinks: done"

echo "Active symlinks in $HOME directory"
find ~ -maxdepth 1 -type l -ls
