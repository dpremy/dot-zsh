#!/usr/bin/env zsh

# source all files in ~/.zsh/
for zshrc_config in ~/.zsh/*[^~] ; do
    source $zshrc_config
done

# oh-my-zsh configuration if found
if [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
  export ZSH=$HOME/.oh-my-zsh
  ZSH_THEME="custom"
  plugins=(gitfast vi colorize extract colored-man rsync)
  source $ZSH/oh-my-zsh.sh
fi

# source ~/.zshrc_local if needed
test -f ~/.zshrc_local && source ~/.zshrc_local
