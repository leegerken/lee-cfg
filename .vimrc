set nocompatible
filetype off
filetype plugin indent on
syntax on  " Enable syntax highlighting

set exrc
set secure
set showcmd

set fillchars=vert:\│

set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search

set number relativenumber

set termwinsize=12x0   " Set terminal size
set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits
set makeprg=gcc\ %

let mapleader = ' '
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

:abbr #b /****************************************************

"**************************************************** 
" preservim/nerdtree
"**************************************************** 
nnoremap <leader>l :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpanable = ''
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeQuitOnOpen = 1

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

map <leader>o :call CompileRun()<CR>
