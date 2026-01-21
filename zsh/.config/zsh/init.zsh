eval "$(rbenv init - zsh)"
source "$XDG_DATA_HOME/hererocks/5.1.5/bin/activate"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/lfp/.opam/opam-init/init.zsh' ]] || source '/home/lfp/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

eval "$(starship init zsh)"
