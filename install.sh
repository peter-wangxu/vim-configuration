#!/bin/bash
#######################################################
# This script is aimed at setting up Vundle based VIM #
# environment in just one click                       #
# Tested on:                                          #
# Ubuntu 14/CentOS 6.5                                #
# Linuxmint 17.3
#######################################################
VIM_RC_TMP=${VIM_RC_TMP:-/tmp/vim-configuration}
FONTS=${FONTS:-/tmp/fonts}
echo "If root priviledge is asked, please give."
if [ -z $(which yum) ];then
    sudo apt-get -y install git python vim exuberant-ctags
else
    sudo yum -y install git python vim ctags
fi

echo "Will install vim plugins via Vundle for current user:"
mkdir -p ~/.vim/bundle
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -rf $VIM_RC_TMP
git clone https://github.com/peter-wangxu/vim-configuration $VIM_RC_TMP
rm -rf $FONTS
git clone https://github.com/powerline/fonts $FONTS
$FONTS/install.sh

mv -v $VIM_RC_TMP/.vimrc_Vundle ~/.vimrc

echo "Begin to install following plugins:"
vim +PluginInstall +qall
echo "Everything Done!"
echo "[Optional]Please change your console font to powerline."
