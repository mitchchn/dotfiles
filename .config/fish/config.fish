#### PATH ####

source $HOME/.cargo/env

set GOPATH $HOME/go
set PATH $HOME/go/bin $PATH

set PATH $HOME/.local/bin $PATH

# ALIASES #

if type -q code-insiders
    alias code code-insiders
end

if type -q exa
    alias ls exa
end

if type -q bat
    alias cat bat
end

#### PROMPT ####

# Starship
# source ("$HOME/.cargo/bin/starship" init fish --print-full-init | psub)

# Powerline-go
function fish_prompt
    set duration (math -s6 "$CMD_DURATION / 1000")
    eval powerline-go \
        -cwd-max-depth 3 \
        -modules "venv,ssh,cwd,perms,git,jobs,exit,duration" \
        -duration $duration \
        -duration-min 5 \
	-newline \
        -shell bare
end
