set nocompatible   " Disable vi-compatibility

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
" My Plugins
    " Color Scheme
    Plugin 'flazz/vim-colorschemes'
    set background=light

    "Nerdtree Folder Management
    Plugin 'scrooloose/nerdtree'

    "Powerline: Cool thing at bottom of screep
    Plugin 'Lokaltog/powerline'

    "Rust and rust autocompletion
    Plugin 'wting/rust.vim'
    Plugin 'phildawes/racer'

    "C++ automcompetion and gutter compiler errors/warnings
    "Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" Rust plugin settings
set hidden
let g:racer_cmd = "racer"
let $RUST_SRC_PATH="/usr/local/src/rust/src"

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set t_Co=256

colorscheme xoria256
syntax enable
set guifont=Menlo\ 16
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","


" Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal model
imap jj <esc>

nmap <C-n> :NERDTreeToggle<cr>


"Show (partial) command in the status line
set showcmd


" Quickly go forward or backward to buffer
nmap :bm :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

highlight Search cterm=underline

" Swap files out of the project root
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/


" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e


" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>
