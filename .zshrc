# Ensure directories exist
mkdir -p "$XDG_CACHE_HOME/zsh"

# Add custom aliases
source "$ZDOTDIR/.zsh_aliases"

# Options
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

setopt AUTO_CD
setopt CORRECT
setopt NO_BEEP

# Configure Keybindings
bindkey ' ' magic-space								# do history expansion on space
bindkey '^U' backward-kill-line						# ctrl + U
bindkey '^[[3;5~' kill-word							# ctrl + Supr
bindkey '^[[3~' delete-char							# delete
bindkey '^[[1;5C' forward-word						# ctrl + ->
bindkey '^[[1;5D' backward-word						# ctrl + <-
bindkey '^[[5~' beginning-of-buffer-or-history		# page up
bindkey '^[[6~' end-of-buffer-or-history			# page down
bindkey '^[[H' beginning-of-line					# home
bindkey '^[[F' end-of-line							# end
bindkey '^[[Z' undo									# shift + tab undo last action

# Load Modules
# Syntax Completions
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

# Plugins
ZSH_PLUGIN_DIR="$ZDOTDIR/plugins"

# Syntax Highlighting
source "$ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Prompts
NEWLINE=$'\n'
PROMPT="${NEWLINE}%K{#2F3A28}%F{#DDE2D2}$(date +%T) %K{#44523A}%F{#F0F2E8} %n %K{#66755A} %~ %f%k ❯ "
