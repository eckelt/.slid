#!/bin/bash
#
# Run this file to install and configure these applications
#   zsh
#   oh-my-zsh
#     install custom theme
#   icon fonts 
#     * Inconsolata
#   git
#

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

### INSTALL BASIC SOFTWARE SET

# UNCOMMENT FOLLOWING LINE IF HOMEBREW IS NOT YET INSTALLED
#   see http://brew.sh
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo -e "\xee\xa1\xa9 Installing software with Homebrew..."
brew install openssl nvm go hub

# UNCOMMENT FOLLOWING LINT TO INSTALL oh-my-zsh
#   see http://ohmyz.sh
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install custom theme bullet-train
#   see https://github.com/caiogondim/bullet-train-oh-my-zsh-theme

# install powerline font
#   see https://github.com/gabrielelana/awesome-terminal-fonts/

### SET CONFIG FILE SYMBOLIC LINKS
echo -e "\xee\x87\x81 Setting links..."
cd ~
rm .zshrc >/dev/null; ln -s $BASEDIR/zshrc .zshrc
rm .gitconfig >/dev/null; ln -s $BASEDIR/gitconfig .gitconfig
rm .vimrc >/dev/null; ln -s $BASEDIR/vimrc .vimrc

echo -e "All done! \xee\x86\x97"

