syntax on              " syntax highlighting
set number             " line numbers
set incsearch          " search as you type
set expandtab          " insert spaces instead of tabs
set shiftwidth=2       " two-space tabs
set softtabstop=2      " yes, two-space tabs
set autoindent         " simple auto indent
set laststatus=2       " always show status line
set foldlevelstart=99  " open all folds by default

" I try to keep comments 80 chars wide, and code never more than 100
set colorcolumn=80,100

" color scheme
set background=dark
colorscheme solarized

" configure lightline (status line plugin)
let g:lightline = {
  \ 'colorscheme': 'solarized_dark',
  \ 'active': {
  \   'left': [['mode'], ['fugitive', 'readonly', 'filename', 'modified']]
  \ },
  \ 'component': {
  \   'readonly': '%{&readonly?"":""}',
  \   'fugitive': '%{exists("*fugitive#head") && ""!=fugitive#head() ? " ".fugitive#head() : ""}'
  \ },
  \ 'component_visible_condition': {
  \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }

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

" remove all trailing whitespace (plugin)
nnoremap <leader><space> :FixWhitespace<cr>

" quickly edit and source this vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" enable filetype plugins, with autoindent
filetype plugin indent on

