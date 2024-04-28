# Environment variables
export GPG_TTY=$(tty)
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="librewolf"

if [ -r ~/.bashrc ]; then
        source ~/.bashrc
fi
