set PRIVATE_CONFIG_FILE $HOME/.config/fish/config.private.fish
if test -e $PRIVATE_CONFIG_FILE
    source $PRIVATE_CONFIG_FILE
end