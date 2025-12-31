#!/bin/bash

# Terminal Configuration Installer
# This script helps you install terminal configurations

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored messages
print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to backup existing file
backup_file() {
    local file=$1
    if [ -f "$file" ]; then
        local backup="${file}.backup.$(date +%Y%m%d_%H%M%S)"
        cp "$file" "$backup"
        print_info "Backed up $file to $backup"
    fi
}

# Function to install configuration
install_config() {
    local source=$1
    local target=$2
    
    if [ ! -f "$source" ]; then
        print_error "Source file $source not found!"
        return 1
    fi
    
    # Backup existing file
    backup_file "$target"
    
    # Copy new configuration
    cp "$source" "$target"
    print_info "Installed $target"
}

# Main menu
show_menu() {
    echo ""
    echo "======================================="
    echo "  Terminal Configuration Installer"
    echo "======================================="
    echo "1) Install Bash configuration"
    echo "2) Install Zsh configuration"
    echo "3) Install Vim configuration"
    echo "4) Install Tmux configuration"
    echo "5) Install Git configuration"
    echo "6) Install all configurations"
    echo "7) Exit"
    echo "======================================="
    echo -n "Select an option [1-7]: "
}

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Installation functions
install_bash() {
    print_info "Installing Bash configuration..."
    install_config "$SCRIPT_DIR/bash/.bashrc" "$HOME/.bashrc"
    print_info "Reload with: source ~/.bashrc"
}

install_zsh() {
    print_info "Installing Zsh configuration..."
    install_config "$SCRIPT_DIR/zsh/.zshrc" "$HOME/.zshrc"
    print_info "Reload with: source ~/.zshrc"
}

install_vim() {
    print_info "Installing Vim configuration..."
    install_config "$SCRIPT_DIR/vim/.vimrc" "$HOME/.vimrc"
    print_info "Restart vim or reload with: :source ~/.vimrc"
}

install_tmux() {
    print_info "Installing Tmux configuration..."
    install_config "$SCRIPT_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"
    print_info "Reload in tmux with: Ctrl+a then r"
}

install_git() {
    print_info "Installing Git configuration..."
    install_config "$SCRIPT_DIR/git/.gitconfig" "$HOME/.gitconfig"
    install_config "$SCRIPT_DIR/git/.gitignore_global" "$HOME/.gitignore_global"
    
    print_warning "Don't forget to update your git user information:"
    echo "  git config --global user.name \"Your Name\""
    echo "  git config --global user.email \"your.email@example.com\""
}

install_all() {
    print_info "Installing all configurations..."
    install_bash
    install_zsh
    install_vim
    install_tmux
    install_git
    print_info "All configurations installed successfully!"
}

# Main loop
while true; do
    show_menu
    read -r choice
    
    case $choice in
        1) install_bash ;;
        2) install_zsh ;;
        3) install_vim ;;
        4) install_tmux ;;
        5) install_git ;;
        6) install_all ;;
        7) 
            print_info "Exiting..."
            exit 0
            ;;
        *)
            print_error "Invalid option. Please select 1-7."
            ;;
    esac
    
    echo ""
    read -p "Press Enter to continue..."
done
