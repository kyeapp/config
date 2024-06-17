#!/bin/bash

# a better git log
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# git shortcuts
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# git settings
git config --global core.editor /usr/bin/nvim
git config --global user.email "paeynivek@gmail.com"
git config --global user.name "Kevin Y"
git config --global core.autocrlf false
