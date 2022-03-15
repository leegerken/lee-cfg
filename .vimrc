set nocompatible
filetype off
filetype plugin indent on
syntax on  " Enable syntax highlighting

"****************************************************
" vundle
"****************************************************

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')
" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'preservim/tagbar'
Plugin 'preservim/nerdtree'
call vundle#end()

"**************************************************** 

set exrc
set secure
set showcmd

set nobackup
set nowb
set noswapfile

set fillchars=vert:\│
hi VertSplit term=NONE cterm=NONE gui=NONE ctermfg=DarkGrey

set autoindent
set smartindent
set ts=2
set sts=2
set sw=2
set expandtab

set ai
set si
set wrap

" Search
set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search
set ignorecase
set smartcase

set number relativenumber

set termwinsize=12x0   " Set terminal size
set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits
set makeprg=gcc\ %

let mapleader = ' '


:abbr #b "****************************************************

"**************************************************** 
" preservim/nerdtree
"**************************************************** 
nnoremap <leader>l :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpanable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeQuitOnOpen = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"**************************************************** 
" AutoPairs
"**************************************************** 
let g:AutoPairsShortcutToggle = '<C-P>'

"**************************************************** 
" CompileRun
"**************************************************** 
func! CompileRun()
exec "w"
if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
elseif &filetype == 'cpp'
    exec "!g++ -g -Wall *.cpp -o %<"
    exec "!time ./%<"
elseif &filetype == 'sh'
    exec "!time bash %"
endif
endfunc

func! CompileRunNcurses()       "Compile and run ncurses.c
exec "w"
exec "!gcc % -lncurses -o %<"
exec "!time ./%<"
endfunc

map <leader>o :call CompileRun()<CR>
map <leader>n :call CompileRunNcurses()<CR>
