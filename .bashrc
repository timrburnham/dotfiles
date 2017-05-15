# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls="ls -Fsh --color=auto"
alias ids="cd $ids"
alias com="cd $com"
alias tmp="cd $DATA_DIR"

if [ -t ]; then # interactive shell
	eval `dircolors ~/.dircolors`
	set -o vi
#	export PS1="\033[33m\u@\h\033[00m:\033[36m\w \033[00m\\$ \[$(tput sgr0)\]"
	export PS1="\[\e[33m\]\u@\h\[\e[0m\]:\[\e[36m\]\w/\[\e[0m\]"
fi
