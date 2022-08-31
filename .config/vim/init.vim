" --- General

syntax on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set guicursor=i:block
set relativenumber
set incsearch
set nohlsearch
set splitbelow
set splitright
set hidden
set scrolloff=8

let mapleader = ' '
nnoremap Q :wq<cr>
nnoremap ! :q!<cr>

" --- Compile & Run
func! CompileRun()
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'ruby'
    exec "!ruby %"
  endif
endfunc

map <leader>o :call CompileRun()<CR>

