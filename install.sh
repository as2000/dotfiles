#!/bin/bash

sudo apt install i3
sudo apt install git
sudo apt install tmux

mkdir -p ~/.fonts
mkdir -p ~/src

git clone https://github.com/banga/powerline-shell ~/src/powerline-shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln Monaco%20for%20Powerline.ttf ~/.fonts/Monaco.ttf
ln vimrc ~/.vimrc
ln i3config ~/.config/i3/config
ln tmux.conf ~/.tmux.conf
ln gitconfig-personal ~/.gitconfig
ln bash_profile ~/.bash_profile
sudo cp i3exit /usr/local/bin/i3exit

cd ~/src/powerline-shell
sudo python setup.py install
source ~/.bash_profile
