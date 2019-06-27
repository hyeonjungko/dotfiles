"VIM CONFIG

"All Plugs reside in ~/.config/nvim/init.vim
syntax enable

"Line Numbers
set number
set numberwidth=3
set relativenumber
set ruler

"Language-specific
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
au BufNewFile,BufRead *.ejs set filetype=html


"Custom Key Bindings

  "leader
let mapleader = ","
  "exit insert mode
imap jk <Esc>
  "split navigation
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
  "tab completion
imap <Tab> <C-P>
set complete=.,b,u,t
set wildmode=longest,list:longest

  "NerdTree
map <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"Color scheme highlight overrides
function! MyHighlights() abort
    "Set italics
    let &t_ZH="\e[3m"
    let &t_ZR="\e[23m"
    highlight Comment cterm=italic gui=italic
    "Statusline
    highlight StatusLine cterm=NONE ctermbg=None ctermfg=None gui=NONE guibg=None guifg=None
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END

