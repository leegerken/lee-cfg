source $HOME/.bashrc

export PATH=$PATH:/Users/lee/.local/bin

export EDITOR="/usr/bin/vim"
export FILE="ranger"
export BROWSER="qutebrowser"

# --- MacOS
export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi
