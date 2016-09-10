#!/bin/bash
#######################################################
# This script is aimed at setting up Vundle based VIM #
# environment in just one click                       #
# Tested on:                                          #
# Ubuntu 14/CentOS 6.5                                #
# Linuxmint 17.3
#######################################################
FONTS=${FONTS:-/tmp/fonts}
USR_FONTS=${USR_FONTS:-~/.local/share/fonts/}
echo "If root priviledge is asked, please give."
if [ -z $(which yum) ];then
    sudo apt-get -y install git python vim exuberant-ctags
else
    sudo yum -y install git python vim ctags
fi

echo "Preparing Command-T environment..."

if [ -z $(which yum) ];then
    sudo apt-get -y install vim-nox ruby ruby-dev rake make
fi

echo "Will install vim plugins via Vundle for current user:"
mkdir -p ~/.vim/bundle
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Download some special fonts for airline
mkdir -p $USR_FONTS
wget -P $USR_FONTS \
https://github.com/FortAwesome/Font-Awesome/raw/master/fonts/FontAwesome.otf \
-O $USR_FONTS/FontAwesome.otf
wget -P $USR_FONTS \
https://github.com/jesseweed/seti-ui/raw/master/styles/_fonts/icomoon.ttf \
-O $USR_FONTS/icomoon.ttf
wget -P $USR_FONTS \
https://github.com/github/octicons/raw/master/octicons/octicons.ttf \
-O $USR_FONTS/octicons.ttf
wget -P $USR_FONTS \
https://github.com/ryanoasis/powerline-extra-symbols/raw/master/patched-fonts/DroidSansMonoForPowerlinePlusNerdFileTypesMono.otf \
-O $USR_FONTS/DroidSansMonoForPowerlinePlusNerdFileTypesMono.otf

# Enable user fonts
rm -rf $FONTS
git clone https://github.com/powerline/fonts $FONTS
$FONTS/install.sh

cp -v ./.vimrc_default ~/.vimrc

echo "Begin to install VIM plugins:"
vim +PluginInstall +qall

# Compile command-t, since vundle could not handle it
echo "Compiling command-t"
cd ~/.vim/bundle/command-t
rake make

echo -e "\033[0;32mEverything Done!\033[0m"
echo -e "\033[0;33mOptional:\033[0mPlease change your console font to powerline."
