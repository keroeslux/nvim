" == VARIABLES
let mapleader = ";"
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
nnoremap <leader>t :CHADopen<CR>
nnoremap <leader>x xxxx
nnoremap <space> : 
nnoremap <leader>q :call CopyCodeBlockToClipboard()<CR>
nnoremap ;s :Replace
inoremap jj <esc>
inoremap <C-q> <C-c>
inoremap <C-a> ;
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
function! CopyCodeBlockToClipboard() 
    let cursor_pos = getpos('.')
    let i = 1
    let done = 0
    while !done
        call setpos('.', cursor_pos)
        execute "normal" 'v' . i . 'aBVok"*y'
        if mode() =~ "^[vV]"
            let done = 1
        else
            let i = i + 1
        endif
    endwhile
    execute "normal \<ESC>"
    call setpos('.', cursor_pos)
endfunction
" == Commands
command! -nargs=+ Replace :call Replace(<f-args>)
command! ShowBackground call ShowBackground()
" == Extra
call plug#begin('~/.config/nvim/plugged')
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} " run :CHADdeps after
    Plug 'dracula/vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'tmsvg/pear-tree'
call plug#end()
colorscheme dracula 
