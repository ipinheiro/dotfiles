" =============== plugins ================================================

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jremmen/vim-ripgrep'      " Search with rg
Plug 'junegunn/fzf.vim'         " Search with fzf
Plug 'sheerun/vim-polyglot'     " language
Plug 'davidhalter/jedi-vim'     " autocompletetion
Plug 'morhetz/gruvbox'          " nice pastel retro theme

call plug#end()

" =============== NERDTree ================================================
let NERDTreeShowLineNumbers=1   " enable line numbers
let NERDTreeShowHidden=0        " display hidden files on startup
                                " make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
                                " invoke NERDTree with Ctrl-f
map <C-f> :NERDTreeToggle<CR>

" =============== config ================================================

syntax on                       " highlight syntax
set encoding=utf-8              " default encoding is utf-8
scriptencoding utf-8            " script encoding is utf-8
set history=500                 " 500 lines of history

colorscheme gruvbox
set background=dark             " dark mode for theme

set incsearch                   " show matches while you type
set hlsearch                    " highlight matches
set ignorecase                  " search case insensitive
set smartcase                   " search case-sensitive when uppercase characters appear in search

set wrap                        " wrap lines
set autoindent		            " keep prev indent
set smartindent                 " smart autoindenting
set smarttab                    " insert shiftwidth blanks
set shiftwidth=4	            " width of shift, spaces
set softtabstop=4               " number of tab-spaces while editing
set expandtab 		            " tabs are spaces
set tabstop=4		            " tabs are worth 4 spaces
                                " force *.md files to be opened as markdown.
au BufNewFile,BufRead *.md set filetype=markdown

set cursorline 		            " highlight current line
set showmode 		            " show current mode
highlight clear LineNr          " highlight the current line number
highlight clear SignColumn      " highlight gutter symbols
set number                      " line numbers on
set relativenumber              " for fast vertical movement