#!/bin/sh

[ -f "$XDG_DATA_HOME/zap/zap.zsh" ] && source "$XDG_DATA_HOME/zap/zap.zsh"

# source
plug "$ZDOTDIR/options.zsh"
plug "$ZDOTDIR/aliases.zsh"
plug "$ZDOTDIR/exports.zsh"

plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zsh-users/zsh-history-substring-search"
# plug "zap-zsh/zap-prompt"
plug "zap-zsh/vim"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"
plug "lukechilds/zsh-nvm"
plug "lukechilds/zsh-better-npm-completion"

plug "$ZDOTDIR/history.zsh"
plug "$ZDOTDIR/bindings.zsh"
plug "$ZDOTDIR/init.zsh"

[ -f "/home/lfp/.local/share/ghcup/env" ] && . "/home/lfp/.local/share/ghcup/env" # ghcup-env
eval "$(direnv hook zsh)"
