syntax on              " syntax highlighting
set number             " line numbers
set incsearch          " search as you type
set expandtab          " insert spaces instead of tabs
set shiftwidth=2       " two-space tabs
set softtabstop=2      " yes, two-space tabs
set autoindent         " simple auto indent

" I try to keep comments 80 chars wide, and code never more than 100.
set colorcolumn=80,100

" color scheme
set background=dark
colorscheme solarized

" load file type plugins
filetype plugin on

" auto indent based on filetype
filetype plugin indent on

