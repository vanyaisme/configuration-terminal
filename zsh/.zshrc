# ~/.zshrc: Zsh configuration file

# Path to oh-my-zsh installation (if using oh-my-zsh)
# export ZSH="$HOME/.oh-my-zsh"

# Theme
# ZSH_THEME="robbyrussell"

# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Completion settings
autoload -Uz compinit
compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Better completion menu
zstyle ':completion:*' menu select

# Color support
autoload -U colors && colors

# Prompt
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f$ '

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'

# Key bindings
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Enable syntax highlighting (if installed)
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable autosuggestions (if installed)
# source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
