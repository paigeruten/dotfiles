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

" leader keys
let mapleader = ","
let maplocalleader = "\\"

" type jk to leave insert mode
inoremap jk <esc>
inoremap <esc> <nop>

" don't let myself use the arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" quickly edit and source this vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" enable filetype plugins, with autoindent
filetype plugin indent on

