# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls="ls -Fsh --color=auto"
alias ll="ls -ltr"
alias view="vim -R"

up () { 
    cd $(printf '../%.0s' $(seq 1 $1))
}
export -f up

if [ -t ]; then # interactive shell
	eval `dircolors ~/.dircolors`
	set -o vi
	export PS1="\[\e[33m\]\u@\h\[\e[0m\]:\[\e[36m\]\w/\[\e[0m\] "
fi
