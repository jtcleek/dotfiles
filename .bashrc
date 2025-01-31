# Load additional dotfiles. Use ~/.extra for configuration not tracked.
for file in ~/.{extra,prompt,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

# History
shopt -s histappend
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
export PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"
