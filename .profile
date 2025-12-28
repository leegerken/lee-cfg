source $HOME/.bashrc


export PATH=$PATH:/Users/lee/.local/bin # User-added binaries/bash-scripts
export PATH=$PATH:/Users/lee/Library/Python/3.9/bin
export EDITOR="vim"
export FILE="ranger"
export MANPAGER="less -R --use-color -Dd+r -Du+b"


# --- MacOS
export BASH_SILENCE_DEPRECATION_WARNING=1 

if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

#if [ -z "$TMUX" ]; then
#    exec tmux new-session -A -s main
#fi
