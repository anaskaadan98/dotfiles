# Use XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Use XDG directories for ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History location
export HISTFILE="$XDG_STATE_HOME/zsh/.histfile"
export HISTSIZE=50000
export SAVEHSIT=50000
