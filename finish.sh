#!/bin/bash

pip3 install --user pipenv

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo <<DATA

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

function my_md
{
  command mkdir -p $1 && cd $1
}

alias md=my_md
alias code.="code ."
alias du="du -h"
alias sqlite=/usr/local/opt/sqlite/bin/sqlite3
alias docker-cleanup="docker rm \$(docker ps -a -q) ; docker rmi \$(docker images -q)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias readlink=greadlink
alias youtube-dl='\youtube-dl -c -o "%(playlist_index)s-%(title)s.%(ext)s"'

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls="exa -lh --git"
alias l="exa -lh --git"
alias la="exa -lah --git"

alias trash="rmtrash"
alias   del="rmtrash"
alias    rm="echo Use 'del' or escape '\\rm'"

export GONOSUMDB=github.com/ptolstoi/*,gitlab.stusta.de/antodias/*

DATA >> ~/.zshrc