# User specific aliases
if [ -r ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# Prompt
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
	VIRTUAL_ENV_DISABLE_PROMPT=1
	PS1='\[\e]0;\u@\h: \w\a\]\[\033[;32m\]┌──${VIRTUAL_ENV:+(\[\033[0;1m\]$(basename $VIRTUAL_ENV)\[\033[;32m\])}(\[\033[1;34m\]\u@\h\[\033[;32m\])-[\[\033[0;1m\]\w\[\033[;32m\]] \e[01;31m$(code=${?##0};echo ${code:+[error: ${code}]})\e[00m\n\[\033[;32m\]└─\[\033[1;34m\]\$\[\033[0m\] '
else
    PS1='[\u@\h \W]\$ '
fi
unset color_prompt
