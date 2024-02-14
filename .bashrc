# --- Bash Prompt

bold=$(tput bold)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
reset=$(tput sgr0)

PS1='\[$red$bold\][\[$yellow\]\u\[$green\]@\[$blue\]\h\[$reset\] \[$magenta\]\w\[$red$bold\]]\[$reset\]\$ '

# ---
# enable vi mode in the shell
set -o vi

# include aliasrc if it exists
if [ -f $HOME/.config/shell/aliasrc ]; then
    . $HOME/.config/shell/aliasrc
fi

#Necessary to move vim config from ~ to ~/.config
export VIMINIT="source $HOME/.config/vim/init.vim"
