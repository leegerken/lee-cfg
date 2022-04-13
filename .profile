source $HOME/.bashrc

if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH=$PATH:/Users/lee/.local/bin

export BASH_SILENCE_DEPRECATION_WARNING=1 #MacOS-Removes notice when you are not using zsh >:/

export EDITOR="/usr/bin/vim"
export FILE="ranger"
export BROWSER="qutebrowser"

#if [ -f $HOME/.config/lf/lficons ]; then
#	. $HOME/.config/lf/lficons
#fi

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t main || tmux new -s main
fi
