#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# set PATH so it includes user's private bin if it exists
if [[ -d "$HOME/bin" ]] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [[ -d "$HOME/.local/bin" ]] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

[[ -f ~/.atuin/bin/env ]] && . ~/.atuin/bin/env

# Automatically start X session when logging in on tty1
[[ -z $DISPLAY && $XDG_VTNR -eq 1 && -f ~/.xinitrc && $(type startx 2>/dev/null) ]] && exec startx > ~/.xsession-errors 2>&1
