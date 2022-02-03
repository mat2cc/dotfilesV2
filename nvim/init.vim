let mapleader = ";"
inoremap jk <Esc>
inoremap jK <Esc>
inoremap Jk <Esc>
inoremap JK <Esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open split
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>

set tabstop=2
set softtabstop=2

set number
set relativenumber
set autoindent
set encoding=utf-8
set shell=fish
set ignorecase
set shiftwidth=2
set ai
set si

syntax on
set t_Co=256
set cursorline

runtime ./plug.vim

colorscheme gruvbox
let g:airline_theme='onehalfdark'

" ¦, ┆, │, ⎸, or ▏ 
let g:indentLine_char = '⎸'
