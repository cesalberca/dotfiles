#!/bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bash_profile .zshrc"

# Create a dir to move the configuration files there
rm -ri $olddir
mkdir -p $olddir

cd $dir

for file in $files; do
    mv ~/$file ~/$olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

source ~/.bash_profile
source ~/.zshrc
