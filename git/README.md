# Git Configuration

This directory contains Git version control configuration files.

## Files

- `.gitconfig` - Main git configuration file
- `.gitignore_global` - Global gitignore patterns

## Installation

To use this configuration:

```bash
# Backup your existing git config
cp ~/.gitconfig ~/.gitconfig.backup

# Copy the new configuration
cp git/.gitconfig ~/.gitconfig
cp git/.gitignore_global ~/.gitignore_global

# IMPORTANT: Update with your information
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## Features

- **Color output**: Enabled for all git commands
- **Useful aliases**: 
  - `git st` → status
  - `git co` → checkout
  - `git lg` → pretty log graph
  - `git visual` → graphical log view
- **Default branch**: Set to `main`
- **Merge tool**: vimdiff (requires Vim to be installed; update `.gitconfig` if you prefer a different merge tool)
- **Global gitignore**: Excludes common OS and editor files

## Customization

Edit `.gitconfig` to add your own aliases or modify existing settings.
