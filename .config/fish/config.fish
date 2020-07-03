#### PATH ####

source $HOME/.cargo/env

set GOPATH $HOME/go
set PATH $HOME/go/bin $PATH

set PATH $HOME/.local/bin $PATH

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
        -cwd-max-depth 3 \
#-hostname-only-if-ssh \
        -modules "venv,ssh,cwd,perms,git,jobs,exit,duration" \
        -duration $duration \
        -duration-min 5 \
				-newline \
        -shell bare
end
