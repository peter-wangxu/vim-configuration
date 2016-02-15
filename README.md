# vim-configuration
This project stores my favorite vimrc configuration, you can enable them see section [Installation Guide](#Installation Guide).
Generally, this configuration fits best for _Python_.
# Supported platforms
* Ubuntu
* RHEL/CentOS
* cygwin on Windows 7(need to install `ctags` manually)

# Installation Guide
$ `git clone https://github.com/peter-wangxu/vim-configuration`<br/> 
$ `cd vim-configuration/`<br/>
$ `./install.sh`<br/>
$ Change font in Terminal or Putty or GVim to *powerline* related.

# Installed plugins

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/Tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'

## .vimrc
A basic config file from VIM

## .vim_Vundle
A Vundle style rc file for VIM, the `auto_install.sh` will use this file to setup your vim environment

## References
* Vundle vim plugin manager, see [Vundle] (<https://github.com/gmarik/Vundle.vim/>)
* see *exuberant-ctags* `sudo apt-get install exuberant-ctags`
