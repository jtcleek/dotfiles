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

# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

# Shell Options
shopt -s cdspell
shopt -s checkwinsize
shopt -s extglob

# Aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Completions
[[ -d ~/.bash_completion.d ]] && for f in ~/.bash_completion.d/*; do source $f; done

# Plain prompt for TTY (console) logins
if [[ "$TERM" == "linux" ]]; then
    PS1='\h:\w\$ '
else
    # If __git_ps1 is available
    if type __git_ps1 &>/dev/null; then
        # Git prompt settings
        export GIT_PS1_SHOWDIRTYSTATE=1       # Shows '*' and '+'
        export GIT_PS1_SHOWSTASHSTATE=1       # Shows '$'
        export GIT_PS1_SHOWUNTRACKEDFILES=1   # Shows '%'
        export GIT_PS1_SHOWUPSTREAM="auto"    # Shows '=', '>', '<', or '<>'
        export GIT_PS1_SHOWCOLORHINTS=1       # Enables colored formatting

        # ANSI colors
        CYAN='\[\033[01;36m\]'
        RESET='\[\033[00m\]'

        PS1="\h:${CYAN}\w${RESET}\$(__git_ps1 ' (%s)')\$ "
    else
        # Fallback prompt without git or colors
        PS1='\h:\w\$ '
    fi
fi

# 1Password
[[ -e ~/.1password/agent.sock ]] && export SSH_AUTH_SOCK=~/.1password/agent.sock

# Atuin
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
[[ $(type atuin 2>/dev/null) ]] && eval "$(atuin init bash)"
