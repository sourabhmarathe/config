" Vim settings
" Avoid trying to work with vim
set nocompatible

" Try to indent intelligently (i.e. based on language being used)
filetype indent plugin on

" Syntax highlighting
syntax on


" Searchin will ignore case unless an uppercase letter is used
set ignorecase
set smartcase

" Prevents going to start of line on certain commands
set nostartofline

" Enable use of mouse 
set mouse=a

" Visualbell will suppress beeping and flash screen if something goes wrong
set visualbell

" Line numbers
set number

" Convert tab to 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" Lines over 81 characters get highlighted
set colorcolumn=81

