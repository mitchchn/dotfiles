#### PATH ####

source $HOME/.cargo/env

set GOPATH $HOME/go
set PATH $HOME/go/bin $PATH

# ALIASES #

if type -q code-insiders
    alias code code-insiders
end

#### PROMPT ####

# Starship
# source ("$HOME/.cargo/bin/starship" init fish --print-full-init | psub)

# Powerline-go
function fish_prompt
    set duration (math -s6 "$CMD_DURATION / 1000")
    eval powerline-go \
        -hostname-only-if-ssh \
        -cwd-max-depth 2 \
        -modules "host,ssh,cwd,perms,git,jobs,exit,root,duration" \
        -duration $duration \
        -duration-min 5 \
        -condensed \
        -shell bare
end