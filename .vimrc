execute pathogen#infect()
"'itchyny/lightline.vim'
"'scrooloose/nerdcommenter'
"'jistr/vim-nerdtree-tabs'
"'tpope/vim-pathogen'
"'scrooloose/nerdtree'
syntax on
filetype plugin indent on
let mapleader=","
map <Leader>n <plug>NERDTreeTabsToggle<CR>

 "size of a hard tabstop
 set tabstop=2

 " always uses spaces instead of tab characters
 set expandtab

 " size of an "indent"
 set shiftwidth=2

"lightline status bar
set encoding=utf-8
scriptencoding utf-8
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
