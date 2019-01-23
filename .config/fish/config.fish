set -x PATH $HOME/anaconda3/bin $HOME/go/bin $PATH

set PRIVATE_CONFIG_FILE = $HOME/.config/fish/config.private.fish
if test -e $PRIVATE_CONFIG_FILE
    source $PRIVATE_CONFIG_FILE
end

if type -q code-insiders
    alias code="code-insiders"
end

### Spacefish
# Options: https://github.com/matchai/spacefish/blob/master/docs/Options.md
# set SPACEFISH_PROMPT_ORDER time user dir host git package node docker ruby golang php rust haskell julia aws conda pyenv kubecontext exec_time line_sep battery jobs exit_code char
set SPACEFISH_PROMPT_ORDER time user dir host git exec_time line_sep jobs exit_code char
