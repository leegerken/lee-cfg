#Bash Prompt
bold=$(tput bold)
red=$(tput setaf 1 1 1)
green=$(tput setaf 2 2 2)
yellow=$(tput setaf 3 3 3)
blue=$(tput setaf 4 4 4)
magenta=$(tput setaf 5 5 5)
reset=$(tput sgr0)
PS1='\[$red$bold\][\[$yellow\]\u\[$green\]@\[$blue\]\h\[$reset\] \[$magenta\]\w\[$red$bold\]]\[$reset\]\$ '

set -o vi #vi mode in the shell

# include aliasrc if it exists
if [ -f $HOME/.config/shell/aliasrc ]; then
    . $HOME/.config/shell/aliasrc
fi

#Necessary to move vim config from ~ to ~/.config
export VIMINIT="source $HOME/.config/vim/vimrc"

