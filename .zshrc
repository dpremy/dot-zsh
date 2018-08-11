#!/usr/bin/env zsh

# source debugging functions
test -f "${HOME}/.zsh/debug" && source "${HOME}/.zsh/debug"

# create dummy log functions to prevent errors if ${HOME}/.zsh/debug isn't sourced properly
if ! type log_debug &>/dev/null; then
  function log_emergency () {}; function log_alert () {}; function log_critical () {}; function log_error () {}; function log_warning () {}; function log_notice () {}; function log_info () {}; function log_debug () {}
else
  log_debug ".zshrc debug logging sourced and enabled"
fi

# source all numbered files in ${HOME}/.zsh/
for zshrc_config in "${HOME}/.zsh/"[0-9]*[^~] ; do
  log_info ".zshrc sourcing ${zshrc_config}"
  source "${zshrc_config}"
done

# source ${HOME}/.zshrc_local if found
if [ -f "${HOME}/.zshrc_local" ]; then
  log_info ".zshrc sourcing ${HOME}/.zshrc_local"
  source "${HOME}/.zshrc_local"
else
  log_debug ".zshrc did not find ${HOME}/.zshrc_local, skipping"
fi
