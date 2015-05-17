syntax on
set number
set autoindent  
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set laststatus=2
set formatoptions=tcrqn
"enable cvim
filetype plugin on
"Auto load plugins
execute pathogen#infect()
"F4 to open tree
nmap <F4> :NERDTreeToggle<CR>
"Nerd tree on the right
let g:NERDTreeWinPos = "right"
"F8 to open tag list
nmap <F8> :TlistToggle<CR>
" Display extra whitespace
set list listchars=tab:»·,trail:·
