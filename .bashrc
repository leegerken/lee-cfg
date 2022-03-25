PS1="\u@\h \w "

set -o vi

# include .bashrc if it exists
if [ -f $HOME/.aliasrc ]; then
    . $HOME/.aliasrc
fi

# nnn quit cd script
if [ -f $HOME/.config/nnn/quitcd ]; then
    . $HOME/.config/nnn/quitcd
fi

