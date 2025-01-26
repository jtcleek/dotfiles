# Environment variables
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=10000
export HISTFILESIZE=20000
export GPG_TTY=$(tty)
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="librewolf"
export SSH_AUTH_SOCK=~/.1password/agent.sock

if [ -r ~/.bashrc ]; then
        source ~/.bashrc
fi
