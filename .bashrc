PS1="\u@\h \w "

# include .bashrc if it exists
if [ -f $HOME/.aliasrc ]; then
    . $HOME/.aliasrc
fi

