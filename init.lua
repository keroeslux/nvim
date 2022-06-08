
vim.cmd('set mouse=v')
vim.cmd('set tabstop=5')
vim.cmd('set number')
vim.cmd('set autoindent')
vim.cmd('set ttyfast')
vim.cmd('syntax on')
vim.cmd('set expandtab')
vim.cmd('set incsearch')
vim.cmd('set encoding=utf-8')
vim.cmd('set shiftwidth=4')
vim.cmd('set nocompatible')
vim.cmd('set clipboard=unnamedplus')
vim.cmd('set cursorline')
vim.cmd('set noswapfile')
vim.cmd('set termguicolors')
vim.cmd('set backupdir=~/.cache/vim')
vim.cmd('set undodir=~/.vim/undo')
vim.cmd('set undofile')

vim.keymap.set('n', 'q', ':q!', { noremap = true })
vim.keymap.set('n', '<C-a>', 'i', { noremap = true })
vim.keymap.set('n', '<C-t>', ':wq<CR>', { noremap = true })
vim.keymap.set('n', '<space>ff', '<cmd>Telescope find_files<CR>', { noremap = true })
vim.keymap.set('n', '<space>', ':', { noremap = true })
vim.keymap.set('i', '<C-q>', '<C-c>', { noremap = true })
vim.keymap.set('n', 't', ':NvimTreeToggle<CR>', { noremap = true })
call plug#begin('~/.config/nvim/plugged')
    Plug 'dracula/vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'dracula/vim'
    Plug 'psliwka/vim-smoothie'
    Plug 'tmsvg/pear-tree'
    Plug 'itchyny/lightline.vim'
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'liuchengxu/vim-clap'
    Plug 'sheerun/vim-polyglot'
    Plug 'glepnir/dashboard-nvim' 
    Plug 'joshdick/onedark.vim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'shaunsingh/nord.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'mbbill/undotree'
call plug#end()
vim.cmd('colorscheme nord')
