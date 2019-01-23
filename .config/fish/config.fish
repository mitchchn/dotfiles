set -x PATH $HOME/anaconda3/bin $HOME/go/bin $PATH

# aliases
set ALIASES_FILE "$HOME/.config/fish/aliases.fish"
test -f $ALIASES_FILE; and source $ALIASES_FILE

# private config file (not synced to git)
set PRIVATE_CONFIG_FILE "$HOME/.config/fish/config.private.fish"
test -f $PRIVATE_CONFIG_FILE; and source $PRIVATE_CONFIG_FILE

# private aliases
set PRIVATE_ALIASES_FILE "$HOME/.config/fish/aliases.private.fish"
test -f $PRIVATE_ALIASES_FILE; and source $PRIVATE_ALIASES_FILE

### Spacefish
# Options: https://github.com/matchai/spacefish/blob/master/docs/Options.md
# set SPACEFISH_PROMPT_ORDER time user dir host git package node docker ruby golang php rust haskell julia aws conda pyenv kubecontext exec_time line_sep battery jobs exit_code char
set SPACEFISH_PROMPT_ORDER time user dir host git exec_time line_sep jobs exit_code char
