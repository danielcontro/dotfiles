#!/bin/sh

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias lvim="NVIM_APPNAME=nvims/LazyVim nvim"
alias uvim="NVIM_APPNAME=nvims/uvim nvim"

alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tls="tmux ls"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
