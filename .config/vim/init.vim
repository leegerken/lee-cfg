" --- General

set laststatus=2
set statusline=%f\ -\ FileType:\ %Y

syntax on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab             " Sets tabs to spaces
set guicursor=i:block
set number relativenumber
set incsearch
set nohlsearch
set splitbelow
set splitright
set hidden
set scrolloff=8
set mouse=
set linebreak

let mapleader = ' '
nnoremap Q :wq<cr>
nnoremap ! :q!<cr>

au FileType perl set filetype=prolog

" --- Plugins - vimplug 
"call plug#begin()
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
"Plug 'BurntSushi/ripgrep'
"Plug 'sharkdp/fd'
"Plug 'vimwiki/vimwiki'
"Plug 'rbgrouleff/bclose.vim'
"Plug 'francoiscabrol/ranger.vim'
"call plug#end()

" --- Compile & Run
func! CompileRun()
  exec "w"
  if &filetype == 'c'
    exec "!gcc *.c -o %<"
  elseif &filetype == 'ruby'
    exec "!ruby %"
  elseif &filetype == 'scala'
    exec "!scala %"
  elseif &filetype == 'html'
    exec "!webpush"
  elseif &filetype == 'prolog'
    exec "!swipl -l %"
  elseif &filetype == 'python'
    exec "!python3 %"
  elseif &filetype == 'css'
    exec "!webpush"
  endif
endfunc

map <leader>o :call CompileRun()<CR>

" --- Telescope FuzzyFinder
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

