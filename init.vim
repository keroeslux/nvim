set mouse=v
set tabstop=4
set number
set autoindent
set ttyfast
syntax on
set expandtab
set incsearch
set encoding=utf-8
set shiftwidth=4
set nocompatible
set clipboard=unnamedplus
set cursorline
set noswapfile
set termguicolors
nnoremap q :q!
nnoremap <C-a> i
nnoremap <C-t> :wq<CR>
nnoremap t :NERDTreeToggle<CR>
nnoremap <space> :
inoremap jj <esc>
inoremap <C-q> <C-c>

let NERDTreeToggle=1
let NERDTreeQuitOnOpen=1

call plug#begin('~/.config/nvim/plugged')
    Plug 'dracula/vim'
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'dracula/vim'
    Plug 'tmsvg/pear-tree'
    Plug 'itchyny/lightline.vim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'glepnir/dashboard-nvim' 
call plug#end()
colo dracula
