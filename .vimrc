" Vim-plug install command
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Set leader key to spacebar
map <SPACE> <leader>

set number

set hidden
set showcmd

set ignorecase
set smartcase
set incsearch
set hlsearch
set autochdir
set showmode
set showmatch

set conceallevel=2
set concealcursor=vin

set wildmenu
set wildmode=list:longest

" Edit .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Wrapped line movement
nnoremap j gj
nnoremap k gk

" Autocomplete line
inoremap <C-l> <C-x><C-l>

" To open a new empty buffer
nmap <leader>t :enew<CR>

" Move to next buffer
nmap <leader>l :bnext<CR>

" Move to previous buffer
nmap <leader>h :bprevious<CR>

"Close current buffer and move to previous one
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Window navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-.> 5<C-w><S-.>

" Jump to tag fix
nmap <C-]> g<C-]>

" Splitting windows
set splitbelow
set splitright
nnoremap <leader>w <C-w>v<C-w>l

filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

au FileType sml setl ts=2 sts=2 sw=2

set term=screen-256color

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/a.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'lrvick/conque-shell'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-commentary'
Plug 'pgdouyon/vim-yin-yang'
Plug 'vim-scripts/tetris.vim'
Plug 'raimondi/delimitmate'
Plug 'davidhalter/jedi'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jez/vim-better-sml'
Plug 'lervag/vimtex'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme gruvbox
set background=dark

" Macros
let @z='i/******************************************************************************/'

" Enable list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Use version control directory as cwd
let g:ctrlp_working_path_mode = 'r'

" LaTeX stuff
let g:tex_flavor='latex'
let g:vimtex_compiler_latexmk = {'callback' : 0}

set statusline+=%{gutentags#statusline('[Generating...]')}

