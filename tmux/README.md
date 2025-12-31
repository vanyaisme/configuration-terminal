# Tmux Configuration

This directory contains Tmux terminal multiplexer configuration files.

## Files

- `.tmux.conf` - Main tmux configuration file

## Installation

To use this configuration:

```bash
# Backup your existing .tmux.conf
cp ~/.tmux.conf ~/.tmux.conf.backup

# Copy the new configuration
cp tmux/.tmux.conf ~/.tmux.conf

# Reload tmux configuration (from within tmux)
# Press: Ctrl+a then r
```

## Key Features

- **Prefix key**: Changed from `Ctrl+b` to `Ctrl+a`
- **Split panes**: `|` for vertical, `-` for horizontal
- **Mouse support**: Enabled
- **Pane navigation**: Alt+Arrow keys
- **256 color support**: Enabled
- **Custom status bar**: With time and date

## Usage Tips

- Create new window: `Ctrl+a c`
- Switch windows: `Ctrl+a n` (next), `Ctrl+a p` (previous)
- Split vertical: `Ctrl+a |`
- Split horizontal: `Ctrl+a -`
- Reload config: `Ctrl+a r`
