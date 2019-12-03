# PATH #
source $HOME/.cargo/env

set GOPATH $HOME/go
set PATH $HOME/go/bin $PATH

# ALIASES #

alias code code-insiders

# PROMPT #
source ("/Users/mitchell/.cargo/bin/starship" init fish --print-full-init | psub)