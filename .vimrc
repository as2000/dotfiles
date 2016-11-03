set nocompatible
set number
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
call vundle#end()
filetype plugin indent on
syntax on
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
cmap w!! w !sudo tee > /dev/null %
