#!/bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bash_profile .zshrc"

# If $olddir exists then delete it
if [ -d "$olddir" ]; then
    rm -rf $olddir
fi

# Create a dir to move the configuration files there
mkdir -p $olddir

cd $dir

for file in $files; do
    mv ~/$file ~/$olddir/
    echo "Creating symlink to $file in home directory."		    
    ln -s $dir/$file ~/$file		
done

source ~/.bash_profile
source ~/.zshrc
