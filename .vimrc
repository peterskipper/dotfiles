set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'vim-scripts/indentpython.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-commentary'
Plugin 'davidhalter/jedi-vim'
" Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Key remap for code commenting/uncommenting
vmap c I#<Esc><Esc>
vmap C x<Esc><Esc>
" vmap c :'<,'>s/^/# /<CR>

set encoding=utf-8
" set mouse=nicr " Enable scrolling w mouse, even in tmux
" set clipboard=unnamed " Allow copy/paste with tmux and vim

" Color coding
let python_highlight_all=1
syntax on

" Basic Config Stuff
set number    " Show line numbers
" set linebreak    " Break lines at word (requires Wrap lines)
" set showbreak=+++    " Wrap-broken line prefix
set showmatch    " Highlight matching brace
 
set hlsearch    " Highlight all search results
set smartcase    " Enable smart-case search
set ignorecase    " Always case-insensitive
set incsearch    " Searches for strings incrementally
 
set autoindent    " Auto-indent new lines
set shiftwidth=4    " Number of auto-indent spaces
set smartindent    " Enable smart-indent
set smarttab    " Enable smart-tabs
set softtabstop=4    " Number of spaces per Tab
set backspace=indent,eol,start
 
" Advanced
set ruler    " Show row and column ruler information
 
set undolevels=1000    " Number of undo levels
