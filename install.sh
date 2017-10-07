#!/bin/bash

# Install Hombrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# Use hammerspoon configuration
curl -o ~/.hammerspoon/init.lua https://gist.githubusercontent.com/JavierSA/afcfa5ccaceabcb6ab84/raw/e00f6cf3c4890cb91c0e79a824b5b35a3fedec8b/init.lua

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Change default shell
chsh -s /bin/zsh

# Configure profile
dir=~/dotfiles
files=".zshrc"

# Create a dir to move the configuration files there
cd $dir

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

source ~/.zshrc
