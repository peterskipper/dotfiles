call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/indentpython.vim'
Plug 'ambv/black'
Plug 'tomtom/tcomment_vim'
Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'

call plug#end()
" Remember to :PlugInstall when you first use or change plugins

" Autocomplete settings for jedi-vim/supertab to play nicely
" let g:SuperTabDefaultCompletionType = "context"
" If the above doesn't work, try:
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"


set encoding=utf-8

" Remap Window Keys
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

" Color coding
let python_highlight_all=1
syntax on

" Basic Config Stuff
set number    " Show line numbers
set linebreak    " Break lines at word (requires Wrap lines)
set showbreak=+++    " Wrap-broken line prefix
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
 
" Shortcut to create python tags in virtualenv
map <C-P>t :!/usr/local/bin/ctags -R `python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"`<CR>
" set tags=tags

" Advanced
set ruler    " Show row and column ruler information
 
set undolevels=1000    " Number of undo levels

autocmd BufWritePre *.py execute ':Black'
