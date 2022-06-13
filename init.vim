" == VARIABLES
let mapleader = ";"
let g:floaterm_keymap_toggle = '<leader>ss'
let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

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
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <space> : 
nnoremap <leader>f <cmd>tabnext<CR>
nnoremap <leader>r <cmd>tabprevious<CR>
nnoremap ;s :Replace
inoremap jj <esc>
inoremap <C-q> <C-c>
" == These are my aliases to switch colorschemes
command! Cat :colo catppuccin
command! Nord :colo nord
command! Make :!make
command! Drac :colo dracula
command! Oda :colo onedark
" == Scripting 

if &filetype ==# 'c' || &filetype ==# 'cpp'
    let g:indent_blankline_enabled = v:true
else
    let g:indent_blankline_enabled = v:false
endif

function! Replace(from, to)
    exec ":%s/" . a:from . "/" . a:to . "/g"
endfunction
function! ShowBackground()
    :echo &background
endfunction
" == Commands
command! -nargs=+ Replace :call Replace(<f-args>)
command! ShowBackground call ShowBackground()
command! -nargs=1 Mov :call MoveLine(<f-args>)
" == Extra
let NERDTreeToggle=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
" == If nerdtree is last in the buffer, close it.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif
call plug#begin('~/.config/nvim/plugged')
    Plug 'dracula/vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mhinz/vim-signify'
    Plug 'preservim/nerdtree'
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
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'glepnir/dashboard-nvim' 
    Plug 'joshdick/onedark.vim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
    Plug 'shaunsingh/nord.nvim'
    Plug 'junegunn/vim-easy-align'
    Plug 'dbeniamine/cheat.sh-vim'
    Plug 'voldikss/vim-floaterm'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mbbill/undotree'
call plug#end()
colorscheme catppuccin 
