" install Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set nocompatible " choose no compatibility with legacy vi
syntax on
set encoding=utf-8
set showcmd " display incomplete commands
filetype plugin indent on " load file type plugins + indentation

set clipboard=unnamed

:color desert
" set shiftwidth=4
" set relativenumber
" set number


"" Whitespace
set nowrap " don't wrap lines
set tabstop=2 shiftwidth=2 " a tab is two spaces (or set this to 4)
set expandtab " use spaces, not tabs (optional)
set backspace=indent,eol,start " backspace through everything in insert mode

"" Searching
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase "...unless they contain at least one capital letter

"" liens pour le help
map <C-l> <C-]>

"" desactivation de Ex Mode
map Q <Nop>

set pastetoggle=<F2>
