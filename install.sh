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

# Install Powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Download meslo font
curl -o ~/Library/Fonts/Meslo\ LG\ M\ Regular\ for\ Powerline.ttf https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf

# Install VSCode extensions
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension eg2.tslint 
code --install-extension eg2.vscode-npm-script 
code --install-extension EditorConfig.editorconfig 
code --install-extension esbenp.prettier-vscode 
code --install-extension octref.vetur 
code --install-extension EditorConfig.editorconfig 

# Configure iTerm2 profile
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/dotfiles/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Create hushlogin
touch ~/.hushlogin

# Configure fzf and install keybidings
$(brew --prefix)/opt/fzf/install

# Change MacOS configuration
source .macos

# Configure profile
dir=~/dotfiles
files=".zshrc .gitconfig"

# Create a dir to move the configuration files there
cd $dir

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done

# Install sdkman
curl -s "https://get.sdkman.io" | bash

source ~/.zshrc
