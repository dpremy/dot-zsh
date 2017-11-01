#!/usr/bin/env zsh

# uncomment next line to enable script debugging
#setopt VERBOSE

# source all files in ~/.zsh/
for zshrc_config in ~/.zsh/*[^~] ; do
    source $zshrc_config
done

# source ~/.zshrc_local if needed
test -f ~/.zshrc_local && source ~/.zshrc_local

# disable debugging
unsetopt VERBOSE
