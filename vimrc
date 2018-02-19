set nocompatible
set number
set relativenumber
set backspace=2
filetype off

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'altercation/vim-colors-solarized'
Plug 'Chiel92/vim-autoformat'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'autozimu/LanguageClient-neovim', {  'do': 'bash install.sh',  }
call plug#end()
set guicursor=

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

set t_Co=256
set backupcopy=yes
set hidden 

let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ }

nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>
set guicursor=
