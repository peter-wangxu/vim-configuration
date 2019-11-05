# vim-configuration
This project provides a handy vim configuration, you can enable them in just one
click. See section [Installation Guide](#Installation Guide) for how.
Generally, this configuration fits best for _Python_ and partial for _C_.
# Screenshot

![screenshot](./images/vim-snap1.png)

# Supported platforms
* Ubuntu/Mint/Debian

# Installation Guide
$ `git clone https://github.com/peter-wangxu/vim-configuration`<br/> 
$ `cd vim-configuration/`<br/>
$ `./install.sh`<br/>
$ Change font in Terminal or Putty or GVim to *powerline* related.

# Installed plugins

* [gmarik/Vundle.vim] (<https://github.com/gmarik/Vundle.vim>)
* [tpope/vim-fugitive] (<https://github.com/tpope/vim-fugitive>)
* [L9] (<https://github.com/vim-scripts/L9>)
* [rstacruz/sparkup] (<https://github.com/rstacruz/sparkup>)
* [davidhalter/jedi-vim] (<https://github.com/davidhalter/jedi-vim>)
* [vim-scripts/Tagbar] (<https://github.com/vim-scripts/Tagbar>)
* [scrooloose/nerdtree] (<https://github.com/scrooloose/nerdtree>)
* [altercation/vim-colors-solarized] (<https://github.com/altercation/vim-colors-solarized>)
* [vim-airline/vim-airline] (<https://github.com/vim-airline/vim-airline>)
* [vim-airline/vim-airline-themes] (<https://github.com/vim-airline/vim-airline-themes>)
* [ryanoasis/vim-devicons] (<https://github.com/ryanoasis/vim-devicons>)
* [wincent/command-t] (<https://github.com/wincent/command-t>)
* [airblade/vim-gitgutter] (<https://github.com/airblade/vim-gitgutter>)
* [tpope/vim-surround] (<https://github.com/tpope/vim-surround>)
* [scrooloose/syntastic] (<https://github.com/scrooloose/syntastic>)
* [godlygeek/tabular] (<https://github.com/godlygeek/tabular>)
* [scrooloose/nerdcommenter] (<https://github.com/scrooloose/nerdcommenter>)

## .vimrc
A basic configuration file from VIM

## .vim_default
A Vundle style rc file for VIM, the `install.sh` will use this file to setup your vim environment

## Usage for each Plugins

### vim-fugitive

A git wrapper for vim


### jedi-vim
With this plugin's support, you can jump between function definition and it's
usage.
* `<leader>` + `d`: Goto definition
* `<leader>` + `n`: show all usages of this function
* `<leader>` + `g`: Goto assignments
* `K`: show documentations/Pydoc
* `<leader>` + `r`: rename/refactor

### Tagbar
* `F4`: toggle tagbar

### nerdtree
A file explorer for vim.

* `F2`: toggle nerdtree

### command-t
Fast file finder for vim.

* `F3`: Open project file finder
* `<leader>` + `b`: Open buffer finder

### ctags(exuberant-ctags on Debian/Ubuntu)
To use this, run `ctags -R` on the root folder of your project.

* `Ctrl` + `]`: Goto definition
* `Ctrl` + `t`: Back to previous usage

### airblade/vim-gitgutter
A plugin to show `git diff` in vim.

### vim-surround
Add `surroundings` like quotations, brackets, parentheses in pairs.

* `cs'"`: change `'` to `"`.
* `ysiw"`: add `"` for word under cursor.
* `ds"`: delete `"` for word under cursor.

Note: above `'` or `"` can be any character like `}`, `]`, `)`.

### scrooloose/syntastic
Syntax check(`pep8` or `pylint`) for Python.
To enable this please manually install `sudo pip install flake8`,
if you want more detailed check, install `sudo pip install pylint`
(while I disable pylint as it's providing awful error checkout for me)

* Syntax check when write using `w`.
* `F7`: jump to previous error.
* `F8`: jump to next error.
* `:lopen`: open full list of errors.
* `:lclose`: close full list.

### tabular
Text alignment for multiple lines.
To align text, you need to select text in visual mode and use `Tab /:`.
`:` can be any character like `,`, `|`, `=`.

* Select text and `:Tab /:` to align selected lines.

### nerdcommenter

* `<leader>` + `cc`: Comment out the current line or text selected in visual mode.

See more tips [here]
(<http://vimcasts.org/episodes/aligning-text-with-tabular-vim/>)

## References

* Vundle vim plugin manager, see [Vundle] (<https://github.com/gmarik/Vundle.vim/>)
* see *exuberant-ctags* `sudo apt-get install exuberant-ctags`
