"+-------------------------------+
"|          _                    |
"|  __   __(_)___ ___ ___  ____  |
"|  | | / / / __ `__ \  _|/ __|  |
"|  | |/ / / / / / / / / | |__   |
"|  |___/_/_/ /_/ /_/_/   \___|  |
"|                               |
"|                               |
"+-------------------------------+

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'dracula/vim', { 'as': 'dracula' }

" Initialize plugin system
call plug#end()


" Line numbers and relative line number
set number
set relativenumber
nnoremap <F1> :set number!<cr>:set relativenumber!<cr>
inoremap <F1> <ESC>:set number!<cr>:set relativenumber!<cr>i

" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

syntax on
filetype plugin indent on

" NERDTree
autocmd StdinReadPre * let s:std_in=1
" uncommenting line below will launch nerdtree when vim is launched
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeWinSize=40
let NERDTreeWinPos="left"
let NERDTreeShowHidden=0
let NERDTreeAutoDeleteBuffer=1
let NERDTreeAutoDeleteBuffer=1

" Colors
colorscheme default

" Mappings
set nocompatible

source ~/.vim/mappings.vim
source ~/.vim/abbreviations.vim

" Enable folding(collapsing)
set foldmethod=indent
set foldlevel=99
nnoremap ~ za

