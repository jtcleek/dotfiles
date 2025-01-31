# Environment variables
export GPG_TTY=$(tty)
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="librewolf"

# 1Password SSH agent
if [ -e ~/.1password/agent.sock ]; then
	export SSH_AUTH_SOCK=~/.1password/agent.sock
fi

if [ -r ~/.bashrc ]; then
	source ~/.bashrc
fi
