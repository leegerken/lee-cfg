source $HOME/.bashrc

if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH=$PATH:/Users/lee/.local/bin

export BASH_SILENCE_DEPRECATION_WARNING=1 #MacOS-Removes notice when you are not using zsh >:/

export EDITOR=vim

