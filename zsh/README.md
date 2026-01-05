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

### Installing oh-my-zsh

**Security Note**: The following command downloads and executes a script from the internet. For security, consider reviewing the installer script before running it:

```bash
# Option 1: Download and review before executing (recommended)
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o /tmp/install-omz.sh
# Review the script
less /tmp/install-omz.sh
# If satisfied, execute it
sh /tmp/install-omz.sh

# Option 2: Direct execution (less secure)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
