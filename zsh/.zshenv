export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_RUNTIME_DIR=/tmp

export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export RUSTUP_HOME=$XDG_CONFIG_HOME/rustup
export CARGO_HOME=$XDG_CONFIG_HOME/cargo
export PSQLRC=$XDG_CONFIG_HOME/psql/.psqlrc
export NVM_DIR=$XDG_CONFIG_HOME/nvm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm
# export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc

export EDITOR="nvim"
export VISUAL="nvim"

export TERMINAL="wezterm"
export BROWSER="brave"

export CHROME_EXECUTABLE="/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"

. "$CARGO_HOME/env"
