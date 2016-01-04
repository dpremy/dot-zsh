#!/bin/zsh

for zshrc_config in ~/.zsh/*[^~] ; do
    source $zshrc_config
done

# oh-my-zsh configuration
ZSH_THEME="custom"
plugins=(gitfast vi colorize extract colored-man rsync)

test -f ~/.zshrc_local && source ~/.zshrc_local
