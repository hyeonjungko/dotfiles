" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" fetch other settings from vimrc
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc


set termguicolors
let ayucolor="mirage"
colorscheme ayu

