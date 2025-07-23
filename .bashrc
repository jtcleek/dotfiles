#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set environment
export EDITOR='vim'
export VISUAL='vim'
export GREP_COLORS='mt=1;36'
export HISTCONTROL='ignoredups'
export HISTSIZE=5000
export HISTFILESIZE=5000
export PAGER='less'
export TZ='America/Chicago'
export GPG_TTY=$(tty)
export TERMINAL='alacritty'
export BROWSER='librewolf'

# Aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Completions
[[ -d ~/.bash_completion.d ]] && for f in ~/.bash_completion.d/*; do source $f; done

PS1='[\u@\h \W]\$ '

# Atuin
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
[[ $(type atuin 2>/dev/null) ]] && eval "$(atuin init bash)"
