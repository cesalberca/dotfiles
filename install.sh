#!/bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old
files=".zshrc"

mkdir -p $olddir

# Create a dir to move the configuration files there
cd $dir

for file in $files; do
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

source ~/.zshrc
