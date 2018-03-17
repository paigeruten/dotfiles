call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sleuth'
Plug 'ntpeters/vim-better-whitespace'

" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'mxw/vim-jsx'

" Color schemes
Plug 'dikiaap/minimalist'
Plug 'owickstrom/vim-colors-paramount'
Plug 'robertmeta/nofrils'

call plug#end()

syntax on              " syntax highlighting
set number             " line numbers
set incsearch          " search as you type
set expandtab          " insert spaces instead of tabs
set shiftwidth=2       " two-space tabs
set softtabstop=2      " yes, two-space tabs
set autoindent         " simple auto indent
set laststatus=2       " always show status line
set foldlevelstart=99  " open all folds by default
set backspace=2        " allow backspace
set clipboard=unnamed  " use system copy+paste
set mouse=a            " mouse mode

" I try to keep comments 80 chars wide, and code never more than 100
set colorcolumn=80,100
highlight ColorColumn ctermbg=8

" leader keys
let mapleader = ","
let maplocalleader = "\\"

" type jk to leave insert mode
inoremap jk <esc>
inoremap <esc> <nop>

" move the cursor up and down within wrapped lines
nnoremap j gj
nnoremap k gk

" don't let myself use the arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" store annoying dotfiles in the ~/.vim directory
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" fzf
nnoremap <leader>, :FZF<cr>
nnoremap <leader>m :Buffers<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>d :GFiles?<cr>
nnoremap <leader>s :Ag<cr>
nnoremap <leader>l :Lines<cr>
nnoremap <leader>c :BLines<cr>
nnoremap <leader>t :Tags<cr>
nnoremap <leader>y :BTags<cr>
nnoremap <leader>b :Commits<cr>
nnoremap <leader>h :BCommits<cr>

" remove all trailing whitespace (plugin)
nnoremap <leader><space> :StripWhitespace<cr>

" nerdtree
nnoremap <leader>. :NERDTree<cr>
let g:NERDTreeMouseMode=3

" quickly edit and source this vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" --- Color schemes {

" Colorful, dark scheme
"color minimalist

" More minimal color scheme
color paramount

" Colorless color scheme
"let g:nofrils_strbackgrounds=1
"let g:nofrils_heavycomments=1
"color nofrils-dark
"color nofrils-light

" --- }

