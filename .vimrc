set nocompatible
filetype off
filetype plugin indent on
syntax on  " Enable syntax highlighting

set exrc
set secure

set tabstop=3
set softtabstop=3
set shiftwidth=3
set noexpandtab

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
Plugin 'lambdalisue/fern.vim'
call vundle#end()


:abbr #b /****************************************************
:abbr #e ****************************************************/

"**************************************************** 
" lamdalisue/fern.vim
"**************************************************** 
let g:fern#disable_default_mappings = 1

noremap <silent> <Leader>l :Fern . -drawer -reveal=% -toggle -width=25<CR><C-w>=

function! FernInit() abort
	nmap <buffer><expr>
		\ <Plug>(fern-my-open-expand-collapse)
		\ fern#smart#leaf(
		\	"\<Plug>(fern-action-open:select)",
		\	"\<Plug>(fern-action-expand)",
		\	"\<Plug>(fern-action-collapse)",
		\)
	nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
endfunction
augroup FernEvents
	autocmd!
	autocmd FileType fern call FernInit()
augroup END

let g:fern#mark_symbol                       = '●'
let g:fern#renderer#default#collapsed_symbol = '+ '
let g:fern#renderer#default#expanded_symbol  = '- '
let g:fern#renderer#default#leading          = ' '
let g:fern#renderer#default#leaf_symbol      = ' '
let g:fern#renderer#default#root_symbol      = '~ '

"**************************************************** 
" AutoPairs
"**************************************************** 
let g:AutoPairsShortcutToggle = '<C-P>'

"**************************************************** 
" Tagbar
"**************************************************** 
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel

nmap <F8> :TagbarToggle<CR>

"**************************************************** 
" CompileRun
"**************************************************** 
func! CompileRun()
exec "w"
if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
elseif &filetype == 'sh'
    exec "!time bash %"
endif
endfunc

map <F5> :call CompileRun()<CR>
imap <F5> <Esc>:call CompileRun()<CR>
vmap <F5> <Esc>:call CompileRun()<CR>
