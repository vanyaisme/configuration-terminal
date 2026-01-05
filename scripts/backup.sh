#!/bin/bash

# Terminal Configuration Backup Script
# This script backs up your current terminal configurations

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

# Create backup directory
BACKUP_DIR="$HOME/terminal-config-backup-$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

print_info "Creating backup in: $BACKUP_DIR"

# Backup configurations
backup_if_exists() {
    local file=$1
    local name=$2
    
    if [ -f "$file" ]; then
        cp "$file" "$BACKUP_DIR/$name"
        print_info "Backed up: $name"
    else
        print_warning "Not found: $file"
    fi
}

# Backup each configuration
backup_if_exists "$HOME/.bashrc" "bashrc"
backup_if_exists "$HOME/.zshrc" "zshrc"
backup_if_exists "$HOME/.vimrc" "vimrc"
backup_if_exists "$HOME/.tmux.conf" "tmux.conf"
backup_if_exists "$HOME/.gitconfig" "gitconfig"
backup_if_exists "$HOME/.gitignore_global" "gitignore_global"

print_info "Backup completed successfully!"
print_info "Backup location: $BACKUP_DIR"
