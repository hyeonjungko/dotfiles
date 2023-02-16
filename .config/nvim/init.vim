" set runtimepath+=~/.vim,~/.vim/after
" set packpath+=~/.vim
" source ~/.vimrc

" remap Esc -> jk
imap jk <Esc>

" Enable suntax highlighting
syntax on
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindent
set shiftwidth=4

" add line numbers
set number

" columns used for line numbering
set numberwidth=4
set relativenumber

" highlights the matched text patter while searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buggers without losing unsaved work
set hidden

" start scorlling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

set noshowmode
set signcolumn=number



call plug#begin('~/.config/nvim/plugged')
Plug 'ayu-theme/ayu-vim'
" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
" Lightline status
Plug 'itchyny/lightline.vim'
" vim-fugitive
Plug 'tpope/vim-fugitive'
" gitsigns
Plug 'lewis6991/gitsigns.nvim'
" LSP
Plug 'neovim/nvim-lspconfig'
" Goyo
Plug 'junegunn/goyo.vim'
" Limelight
Plug 'junegunn/limelight.vim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Autocompletion plugins
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'


call plug#end()

" ayu colorscheme set to mirage
set background=dark
let ayucolor="mirage"
colorscheme ayu

" lua requires
lua require('hko')
lua require('hko/telescope')
lua require('hko/gitsigns')
lua require('hko/lightline')
lua require('hko/lsp')

