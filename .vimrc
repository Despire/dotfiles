set nocompatible              " forget vi compatibility pfuuuphf \ ( o_o ) / 

" The basic stuff everyone has ...
filetype off                  
filetype plugin indent on     

" Completion... 
set completeopt+=menuone,noselect,noinsert
set completeopt-=preview

" Settings
set noswapfile
set nobackup
set nowritebackup

set number
set relativenumber
set ruler
set laststatus=2		        " Always show status bar
set nowrap			            " disable text wrapping to enable horizontal scrolling
set encoding=utf-8              " Set default encoding to UTF-8
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " show me my commands !! 
set noshowmode			        " let airline display this

set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows

set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " case insensitive...
set smartcase                   

set autoindent

set tabstop=4
set shiftwidth=4
set expandtab

set noerrorbells                " No beeps

set mouse=a
set ttymouse=xterm2

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L


" Syntax
syntax enable

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized' 
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'

" set the request timeout to 30 seconds (for big file sizes...)
" https://github.com/ycm-core/ycmd/blob/master/ycmd/completers/language_server/language_server_completer.py#L41
Plug 'ycm-core/YouCompleteMe'

call plug#end()

" Configure plugin after they are loaded !
"
" Colorscheme
set background=dark
colorscheme base16-default-dark

" Mappings
" Leader character, default is '\'
:let mapleader = ","

" YCM remaps
:nnoremap gd :YcmCompleter GoTo<CR>
:nnoremap <C-T> <C-O>

" map ,nt to toggle NerdTree
:nnoremap <leader>nt :NERDTree<CR>

" map switch tab left to ,<S-{>
:nnoremap <leader>{ gT<CR>
" map switch tab right to ,<S-}>
:nnoremap <leader>} gt<CR>

:nnoremap <leader><leader> :bn<CR>
:nnoremap <leader>q :bd<CR>

:nnoremap <C-J> <C-W>j
:nnoremap <C-K> <C-W>k
:nnoremap <C-L> <C-W>l
:nnoremap <C-H> <C-W>h

" 	VIM-AIRLINE
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled = 1

let g:ycm_enable_diagnostic_highlighting = 0 
