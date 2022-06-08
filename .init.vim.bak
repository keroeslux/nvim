" == Lua Reqs

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
set backupdir=~/.cache/vim
set undodir=~/.vim/undo
set undofile
nnoremap q :q!
nnoremap <C-a> i
nnoremap <C-t> :wq<CR>
nnoremap t :NERDTreeToggle<CR>
nnoremap <space>ff <cmd>Telescope find_files<CR>
nnoremap <space> : 
nnoremap <C-n> :NERDTreeFocus<CR>
inoremap jj <esc>
inoremap <C-q> <C-c>
" == These are my aliases to switch colorschemes
command! Cat :colo catppuccin
command! Nord :colo nord
command! Make :!make
command! Drac :colo dracula
command! Oda :colo onedark
" == Scripting 
function Replace(from, to)
    exec ":%s/" . from . "/" . to . "/g"
endfunction
function ShowBackground()
    :echo &background
endfunction


" == Commands
command! -nargs=1 Replace call Replace(<f-args>)
command! ShowBackground call ShowBackground()

let NERDTreeToggle=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]
" == If nerdtree is last in the buffer, close it.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

call plug#begin('~/.config/nvim/plugged')
    Plug 'dracula/vim'
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'dracula/vim'
    Plug 'psliwka/vim-smoothie'
    Plug 'tmsvg/pear-tree'
    Plug 'itchyny/lightline.vim'
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'liuchengxu/vim-clap'
    Plug 'sheerun/vim-polyglot'
    Plug 'glepnir/dashboard-nvim' 
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'joshdick/onedark.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'shaunsingh/nord.nvim'
    Plug 'mbbill/undotree'
call plug#end()
colorscheme nord
