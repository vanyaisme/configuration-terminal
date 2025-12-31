# Vim Configuration

This directory contains Vim editor configuration files.

## Files

- `.vimrc` - Main vim configuration file

## Installation

To use this configuration:

```bash
# Backup your existing .vimrc
cp ~/.vimrc ~/.vimrc.backup

# Copy the new configuration
cp vim/.vimrc ~/.vimrc

# Restart vim or reload the configuration
# :source ~/.vimrc (from within vim)
```

## Features

- Line numbers (absolute and relative)
- Smart indentation (4 spaces)
- Syntax highlighting
- Smart search (incremental, case-smart)
- No backup/swap files
- Custom key mappings with `,` as leader key

## Customization

- Modify `tabstop` and `shiftwidth` for different indentation
- Change `colorscheme` for different color themes
- Add plugins using a plugin manager like Vundle or vim-plug
