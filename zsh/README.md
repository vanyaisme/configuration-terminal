# Zsh Configuration

This directory contains Zsh shell configuration files.

## Files

- `.zshrc` - Main zsh configuration file

## Installation

To use this configuration:

```bash
# Backup your existing .zshrc
cp ~/.zshrc ~/.zshrc.backup

# Copy the new configuration
cp zsh/.zshrc ~/.zshrc

# Reload the configuration
source ~/.zshrc
```

## Optional Enhancements

Consider installing these plugins for enhanced functionality:
- **oh-my-zsh**: Framework for managing Zsh configuration
- **zsh-syntax-highlighting**: Syntax highlighting for commands
- **zsh-autosuggestions**: Fish-like autosuggestions

```bash
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
