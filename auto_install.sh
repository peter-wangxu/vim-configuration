#!/bin/bash
#######################################################
# This script is aimed at setting up Vundle based VIM #
# environment in just one click                       #
#            tested on Ubuntu 14/CentOS 6.5           #
#######################################################
VIM_RC_TMP=${VIM_RC_TMP:-/tmp/vim-configuration}
echo "If root priviledge is asked, please give."
if [ -z $(which yum) ];then
    sudo apt-get -y install git python vim exuberant-ctags
else
    sudo yum -y install git python vim exuberant-ctags
fi

echo "Will install vim plugins via Vundle for current user:"
mkdir -p ~/.vim/bundle
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -rf $VIM_RC_TMP
git clone https://github.com/peter-wangxu/vim-configuration $VIM_RC_TMP

mv -v $VIM_RC_TMP/.vimrc_Vundle ~/.vimrc

echo "Begin to install following plugins:
gmarik/Vundle.vim
tpope/vim-fugitive
L9
rstacruz/sparkup
davidhalter/jedi-vim
vim-scripts/Tagbar
scrooloose/nerdtree"
vim +PluginInstall +qall
echo "Everythin Done!"







