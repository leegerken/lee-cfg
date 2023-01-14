source $HOME/.bashrc


export PATH=$PATH:/Users/lee/.local/bin # User-added binaries/bash-scripts

export EDITOR="vim"
export FILE="ranger"

# --- MacOS
export BASH_SILENCE_DEPRECATION_WARNING=1 

if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

