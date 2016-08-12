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

* ~gmarik/Vundle.vim~

* ~tpope/vim-fugitive~
* ~L9'
* ~rstacruz/sparkup~
* ~davidhalter/jedi-vim~
* ~vim-scripts/Tagbar~
* ~scrooloose/nerdtree~
* ~altercation/vim-colors-solarized~
* ~vim-airline/vim-airline~
* ~vim-airline/vim-airline-themes~
* ~ryanoasis/vim-devicons~
* ~wincent/command-t~

## .vimrc
A basic config file from VIM

## .vim_python
A Vundle style rc file for VIM, the `install.sh` will use this file to setup your vim environment

## References
* Vundle vim plugin manager, see [Vundle] (<https://github.com/gmarik/Vundle.vim/>)
* see *exuberant-ctags* `sudo apt-get install exuberant-ctags`
