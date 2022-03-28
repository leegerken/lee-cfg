#Bash Prompt
bold=$(tput bold)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
reset=$(tput sgr0)
PS1='\[$red$bold\][\[$yellow\]\u\[$green\]@\[$blue\]\h\[$reset\] \[$magenta\]\w\[$red$bold\]]\[$reset\]\$ '

set -o vi #vi mode in the shell

# include aliasrc if it exists
if [ -f $HOME/.config/shell/aliasrc ]; then
    . $HOME/.config/shell/aliasrc
fi

# nnn config source
if [ -f $HOME/.config/nnn/config ]; then
    . $HOME/.config/nnn/config
fi

export VIMINIT="source $HOME/.config/vim/vimrc"

