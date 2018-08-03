#!/usr/bin/env zsh

# uncomment next line to enable script debugging
#setopt VERBOSE

# source all numbered files in ${HOME}/.zsh/
for zshrc_config in "${HOME}/.zsh/"[0-9]*[^~] ; do
    source "${zshrc_config}"
done

# source ${HOME}/.zshrc_local if needed
test -f "${HOME}/.zshrc_local" && source "${HOME}/.zshrc_local"

# disable debugging
unsetopt VERBOSE
