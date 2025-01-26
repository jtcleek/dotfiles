# Environment variables
export GPG_TTY=$(tty)
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="librewolf"
export SSH_AUTH_SOCK=~/.1password/agent.sock

if [ -r ~/.bashrc ]; then
        source ~/.bashrc
fi
