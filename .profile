source $HOME/.bashrc

export PATH=$PATH:/Users/lee/.local/bin

export EDITOR="nvim"
export FILE="ranger"
export BROWSER="qutebrowser"
export MANPAGER="nvim +Man!"

# --- MacOS
export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH="/opt/homebrew/opt/scala@2.12/bin:$PATH"
