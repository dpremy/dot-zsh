#!/bin/zsh

for zshrc_config in ~/.zsh/*[^~] ; do
    source $zshrc_config
done

# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custom"
plugins=(gitfast vi colorize extract colored-man rsync)
source $ZSH/oh-my-zsh.sh

test -f ~/.zshrc_local && source ~/.zshrc_local
