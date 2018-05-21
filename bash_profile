# Command Prompt
GIT_BRANCH() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
WHITE="\[\033[00m\]"
GREEN="\[\033[32m\]"
BLUE="\[\033[94m\]"
CYAN="\[\033[36m\]"
CURRENT_DIRECTORY="\w"
USER="\u"
SHELL="\s-\v"
export PS1="${BLUE}${SHELL}:${GREEN}\$(GIT_BRANCH)${CYAN} ${CURRENT_DIRECTORY}\n${BLUE}${USER}$ ${WHITE}"

# Shortcuts for editing and sourcing config
alias vim="nvim"
alias pp="vim ~/.bash_profile"
alias vrc="vim ~/.vimrc"
alias rr="source ~/.bash_profile"

# Colors for ls
export LSCOLORS="Exfxcxdxbxegedabagacad"
alias ls="ls -G"
alias ll="ls -la"

# git alias
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -10"
alias gll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs="git status"

# enable git completion (requires `brew install bash-completion`)
[ -f /usr/local/etc/bash_completion ] && source /usr/local/etc/bash_completion

# Configure fzf (requires `brew install fzf)
# configure crtl-r history
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

export GIT_EDITOR=nvim

# set GOPATH
export GOPATH=~/GOPATH
export PATH=$PATH:$GOPATH/bin

# Enable python3
export PATH=$PATH:/usr/local/Cellar/python/3.6.5/bin
