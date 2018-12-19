#!/bin/bash

# Install Hombrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# Open hammerspoon
open -a Hammerspoon

# Use hammerspoon configuration
curl -o ~/.hammerspoon/init.lua https://gist.githubusercontent.com/cesalberca/bf06aa9c10b3cfa648284e2ffb7d09c2/raw/31d238ee7b47d06e6cb01f1a803636a2c2a300a4/init.lua

# Install VSCode extensions
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

# Install sdkman
curl -s "https://get.sdkman.io" | bash
source "/Users/cesaralberca/.sdkman/bin/sdkman-init.sh"

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Configure profile
dir=~/dotfiles
files=".zshrc .gitconfig"

# Create a dir to move the configuration files there
cd $dir

for file in $files; do
    echo "Creating symlink to $file in home directory."
    [ -e ~/$file ] && rm ~/$file
    ln -s $dir/$file ~/$file
done

# Change MacOS configuration
source .macos

# Create private-profile
cd ~
touch .private-profile

# Change default shell
chsh -s /bin/zsh
