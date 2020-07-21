# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls="ls -Fsh --color=auto"
alias ll="ls -ltr"
alias view="vim -R"
#alias md5sum="md5 -r" # macOS weirdnesss

up() { 
	cd $(printf '../%.0s' $(seq 1 $1))
}
export -f up

parse_git_branch() {
	branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
	[[ ! -z "$branch" ]] && print "[$branch]"
}
export -f parse_git_branch

if [ -t ]; then # interactive shell
	# Homebrew bash completion
	[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
	eval `dircolors ~/.dircolors`
	set -o vi
	export EDITOR=vim
	export PS1="\[\e[33m\]\u@\h\[\e[0m\]:\[\e[36m\]\w/\[\e[0m\] "
fi
