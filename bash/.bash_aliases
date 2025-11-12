# movement
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# ls
alias ls='ls --color=auto --group-directories-first'
alias l='ls -hF --group-directories-first'
alias la='ls -lhFA --group-directories-first'
alias ll='ls -lhF --group-directories-first'

# grep
alias grep='grep --color=auto'
alias egrep='grep -E'
alias fgrep='grep -F'

# git
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gl='git log --decorate --oneline --graph'
alias gp='git push origin HEAD'
alias gs='git status --short'
alias gS='git status'

# 1password
alias op-signin='eval $(op signin)'
alias op-logout='op signout && unset $(compgen -v | grep "OP_SESSION")'
