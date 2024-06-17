#!/bin/bash

# sudo apt update
# sudo apt install make
# sudo apt install fzf
# sudo apt install silversearcher-ag

# install golang
# GO_VERSION=$(curl -Ls https://go.dev/VERSION?m=text | head -n 1)
# DOWNLOAD_URL="https://go.dev/dl/${GO_VERSION}.linux-amd64.tar.gz" # for linux
# wget "${DOWNLOAD_URL}"
# rm -rf /usr/local/go
# sudo tar -C /usr/local -xzf ${GO_VERSION}.linux-amd64.tar.gz

# seutp vimrc
# sudo add-apt-repository ppa:neovim-ppa/stable
# sudo apt-get update
# sudo apt-get install neovim

# link neovim to vimrc
rm -rf ~/.config
mkdir -p ~/.config/nvim/
ln -s ~/workspace/config/ubuntu/init.vim ~/.config/nvim/init.vim

# link vim dir and vimrc
rm -rf ~/.vim
ln -s ~/workspace/config/ubuntu/vim ~/.vim
rm -rf ~/.vimrc
ln -s ~/workspace/config/ubuntu/vimrc ~/.vimrc
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo cp win32yank.exe /usr/local/bin

# setup bash settings
rm -rf ~/.bashrc
ln -s ~/workspace/config/ubuntu/bashrc ~/.bashrc
