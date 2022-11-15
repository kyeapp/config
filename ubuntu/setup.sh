#!/bin/bash

# sudo apt update
# sudo apt install neovim
# sudo apt install fzf
# sudo apt install silversearcher-ag

# seutp vimrc
# sudo add-apt-repository ppa:neovim-ppa/stable
# sudo apt-get update
# sudo apt-get install neovim
ln -s /mnt/c/Users/paeyn/Documents/workspace/config/ubuntu/vimrc ~/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim/
ln -s ~/.vimrc ~/.config/nvim/init.vim

# setup bash settings
ln -s /mnt/c/Users/paeyn/Documents/workspace/config/ubuntu/bashrc ~/.bashrc


