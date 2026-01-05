# Terminal Configuration Repository

Bundle of everything I carefully adjusted for the usage of the terminal. This repository contains well-organized terminal configurations that you can easily install and share.

## 📁 Repository Structure

```
configuration-terminal/
├── bash/               # Bash shell configurations
│   ├── .bashrc
│   └── README.md
├── zsh/                # Zsh shell configurations
│   ├── .zshrc
│   └── README.md
├── vim/                # Vim editor configurations
│   ├── .vimrc
│   └── README.md
├── tmux/               # Tmux terminal multiplexer configurations
│   ├── .tmux.conf
│   └── README.md
├── git/                # Git version control configurations
│   ├── .gitconfig
│   ├── .gitignore_global
│   └── README.md
├── scripts/            # Utility scripts
│   ├── backup.sh
│   └── README.md
├── install.sh          # Main installation script
└── README.md           # This file
```

## 🚀 Quick Start

### Installation

1. Clone this repository:
```bash
git clone https://github.com/vanyaisme/configuration-terminal.git
cd configuration-terminal
```

2. Run the installer:
```bash
chmod +x install.sh
./install.sh
```

3. Follow the interactive menu to install configurations.

### Manual Installation

If you prefer to install configurations manually:

```bash
# Backup your existing configurations first
chmod +x scripts/backup.sh
./scripts/backup.sh

# Install specific configuration
cp bash/.bashrc ~/.bashrc
cp zsh/.zshrc ~/.zshrc
cp vim/.vimrc ~/.vimrc
cp tmux/.tmux.conf ~/.tmux.conf
cp git/.gitconfig ~/.gitconfig
cp git/.gitignore_global ~/.gitignore_global

# Reload configurations
source ~/.bashrc  # or source ~/.zshrc
```

## 📋 Features

### Bash Configuration
- Color support for ls, grep, and other commands
- Useful aliases (ll, la, .., etc.)
- Enhanced history settings
- Custom prompt with colors
- Bash completion support

### Zsh Configuration
- Advanced history management
- Smart completion system
- Case-insensitive completion
- Custom prompt with colors
- Key bindings for history search
- Compatible with oh-my-zsh

### Vim Configuration
- Line numbers (absolute and relative)
- Smart indentation
- Syntax highlighting
- Smart search functionality
- Custom key mappings
- No backup/swap files

### Tmux Configuration
- Custom prefix key (Ctrl+a)
- Intuitive pane splitting (| and -)
- Mouse support enabled
- Custom status bar
- Easy pane navigation
- 256 color support

### Git Configuration
- Colored output
- Useful aliases (st, co, lg, visual)
- vimdiff as merge tool
- Global gitignore for OS/editor files
- Default branch set to main

## 🔧 Customization

Each configuration directory contains its own README with specific customization instructions. Feel free to modify the configurations to suit your needs:

1. Edit the configuration files in their respective directories
2. Test your changes
3. Commit and push to save your customizations

## 📝 Usage Tips

### Installing Individual Configurations

The `install.sh` script provides an interactive menu to install configurations selectively:
- Option 1-5: Install specific configuration
- Option 6: Install all configurations
- Option 7: Exit

### Backing Up Current Configurations

Before making changes, create a backup:
```bash
./scripts/backup.sh
```

This creates a timestamped backup directory in your home folder.

## 🤝 Contributing

Feel free to submit issues and enhancement requests! If you have improvements or additional configurations to share:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is open source and available under the MIT License.

## ⭐ Acknowledgments

These configurations are based on best practices and personal preferences refined over time. Feel free to use, modify, and share them!

## 📞 Support

If you encounter any issues or have questions:
- Open an issue in the repository
- Check the individual README files in each configuration directory
- Refer to the official documentation of each tool

---

**Happy configuring! 🎉**
