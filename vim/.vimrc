" ~/.vimrc: Vim configuration file

" General settings
set nocompatible              " Use Vim settings, not Vi settings
set encoding=utf-8            " Use UTF-8 encoding
set backspace=indent,eol,start " Allow backspacing over everything

" Display settings
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set showcmd                   " Show command in bottom bar
set cursorline                " Highlight current line
set wildmenu                  " Visual autocomplete for command menu
set showmatch                 " Highlight matching [{()}]

" Search settings
set incsearch                 " Search as characters are entered
set hlsearch                  " Highlight matches
set ignorecase                " Case insensitive search
set smartcase                 " Case sensitive when uppercase is used

" Indentation
set tabstop=4                 " Number of visual spaces per TAB
set softtabstop=4             " Number of spaces in tab when editing
set shiftwidth=4              " Number of spaces for autoindent
set expandtab                 " Tabs are spaces
set autoindent                " Copy indent from current line
set smartindent               " Smart autoindenting

" Enable syntax highlighting
syntax enable

" Color scheme
colorscheme default
set background=dark

" Line wrapping
set wrap                      " Wrap long lines
set linebreak                 " Break at word boundaries

" Backup and swap files
set nobackup                  " No backup files
set noswapfile                " No swap files

" Performance
set lazyredraw                " Redraw only when needed

" Status line
set laststatus=2              " Always show status line
set statusline=%F%m%r%h%w\ [%l/%L,%c]\ [%p%%]

" File type detection
filetype plugin indent on

" Key mappings
let mapleader = ","           " Leader key

" Clear search highlighting with <leader><space>
nnoremap <leader><space> :nohlsearch<CR>

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Easier split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
