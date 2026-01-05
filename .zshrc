# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="common" #nebirhos #NOT IN USE

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    z
    sublime
    vscode
    command-not-found       # Suggests package for missing commands
    docker                  # Docker aliases and completion
    pip                     # Python pip completion
    python                  # Python aliases
    brew                    # Homebrew completion
    macos                   # macOS specific aliases
    colored-man-pages       # Colorize man pages
    copyfile                # Copy file contents to clipboard
    copypath                # Copy current path to clipboard
    zsh-autosuggestions
    zsh-syntax-highlighting #SHOULD BE LAST
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="open -a 'Sublime Text' ~/.zshrc"
alias ohmyzsh="open -R ~/.oh-my-zsh"

# bat - Better cat with syntax highlighting
alias cat='bat --paging=never'
alias less='bat'
export BAT_THEME="TwoDark"

# fd - Better find command
alias find='fd' 

# Fuzzy finder for command history, files, etc. 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Improved fzf defaults
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
# Keybindings:
# Ctrl+R - Search command history
# Ctrl+T - Search files
# Alt+C - Search directories

zoxide #Smart cd that learns patterns
eval "$(zoxide init zsh)"
alias cd='z'
alias cdi='zi'  # Interactive selection

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

PROMPT='%F{#f39c12}[%1~]%f ' #f39c12 #ff8c42 #ff9a56!


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# ============================================
# HISTORY CONFIGURATION
# ============================================
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# Better history settings
setopt EXTENDED_HISTORY         # Write timestamp to history
setopt HIST_EXPIRE_DUPS_FIRST   # Expire duplicate entries first
setopt HIST_IGNORE_DUPS         # Don't record duplicate entries
setopt HIST_IGNORE_ALL_DUPS     # Delete old duplicates
setopt HIST_FIND_NO_DUPS        # Don't display duplicates when searching
setopt HIST_IGNORE_SPACE        # Don't record commands starting with space
setopt HIST_SAVE_NO_DUPS        # Don't write duplicates to history file
setopt HIST_REDUCE_BLANKS       # Remove superfluous blanks
setopt SHARE_HISTORY            # Share history across all sessions

# ============================================
# CUSTOM FUNCTIONS
# ============================================

# Update everything outdated (brew, AppStore, Oh my Zsh)
updateall() {
  echo "=== Homebrew ==="
  brew update && brew upgrade && brew cleanup

  echo "\n=== Mac App Store ==="
  mas upgrade

  echo "\n=== Oh My Zsh ==="
  omz update
}

# Create directory and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Create directory, cd into it and initialize git (3x)
mcg() {
    if [ -z "$1" ]; then
        echo "Usage: mcg <directory-name>"
        return 1
    fi
    mkdir -p "$1" && cd "$1" && git init
}
# Cd into directory and initialize git from there
cdg() {
    if [ -z "$1" ]; then
        echo "Usage: cdg <directory-name>"
        return 1
    fi
    cd "$1" && git init
}

# Extract any archive
extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "'$1' cannot be extracted" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Find process by name and kill
killit() {
    ps aux | grep -v grep | grep -i -e "$1" | awk '{print $2}' | xargs kill -9
}

# Git commit browser with fzf (requires fzf)
fshow() {
    git log --graph --color=always \
        --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
    fzf --ansi --no-sort --reverse --tiebreak=index \
        --preview 'git show --color=always {2}' \
        --bind "enter:execute:git show --color=always {2} | less -R"
}

# Interactive git branch checkout with fzf
fbr() {
    local branches branch
    branches=$(git branch -a) &&
    branch=$(echo "$branches" | fzf +m) &&
    git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# Quick look at file (macOS)
ql() {
    qlmanage -p "$@" &>/dev/null
}

# Get current public IP
myip() {
    curl -s ifconfig.me
}

# Create a backup of a file
backup() {
    cp "$1" "$1.backup-$(date +%Y%m%d-%H%M%S)"
}


# Created by pipx
export PATH="$PATH:/Users/withvanko./.local/bin"
