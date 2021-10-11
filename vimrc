" install Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'matchit.zip'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'raimondi/delimitmate'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'stanangeloff/php.vim'
Plugin 'alvan/vim-php-manual'
Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mileszs/ack.vim'

" themes
Plugin 'morhetz/gruvbox'
" Plugin 'dracula/vim'
call vundle#end()            " required
filetype plugin indent on    " required

" set nocompatible " choose no compatibility with legacy vi
syntax on
set encoding=utf-8
set showcmd " display incomplete commands
filetype plugin indent on " load file type plugins + indentation

set visualbell

set clipboard=unnamed

colorscheme gruvbox
set background=dark

"" Whitespace
set nowrap " don't wrap lines
set tabstop=4 shiftwidth=4 " a tab is two spaces (or set this to 4)
set expandtab " use spaces, not tabs (optional)
set backspace=indent,eol,start " backspace through everything in insert mode

"" Searching
" set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ...unless they contain at least one capital letter

"" liens pour le help
map <C-l> <C-]>
" map <leader>l <C-]>

"" desactivation de Ex Mode
map Q <Nop>

set pastetoggle=<F2>

set wildmenu

let mapleader = "\<Space>"

nmap <leader>n :NERDTreeToggle<CR>

" Remap escape

" command Documentation split $HOME/.vim/sheets/documentation.txt

set tags=./tags;/


" air-line
let g:airline_symbols_ascii = 1
set laststatus=2
" let g:airline_powerline_fonts = 1
" let g:airline_theme='simple'
" let g:airline#extensions#tabline#enabled = 1

" Syntastic configuration

"set statusline+=%{fugitive#statusline()}
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" NERDTree configuration

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Tagbar configuration

nmap <F8> :TagbarToggle<CR>

" Shortcut to rapidly toggle `set list`
" Show *w*hite spaces
nmap <leader>w :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=eol:¬

" Ctrl-P config
" Ctrl-Y opening mode : tab
" let g:ctrlp_by_filename = 0

" Splits
set splitbelow
set splitright

" Ack Ag
let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack                                                                           
cnoreabbrev aG Ack                                                                           
cnoreabbrev Ag Ack                                                                           
cnoreabbrev AG Ack  


" php.vim

function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
