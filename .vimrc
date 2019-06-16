set nocompatible              " forget vi compatibility pfuuuphf \ ( o_o ) / 

" The basic stuff everyone has ...
filetype off                  
filetype plugin indent on     

" Completion... 
"set completeopt=longest,menuone

" Settings
set number
set relativenumber
set ruler
set laststatus=2		" Always show status bar
set nowrap			" disable text wrapping to enable horizontal scrolling
set encoding=utf-8              " Set default encoding to UTF-8
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " show me my commands !! 
set noshowmode			" let airline display this

set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows

set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " case insensitive...
set smartcase                   

set autoindent
set smarttab

set noerrorbells                " No beeps

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L


" Syntax
syntax enable

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'micha/vim-colors-solarized'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Code completition
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
call plug#end()

" Configure plugin after they are loaded !
"
" Colorscheme
set background=light
colorscheme solarized

"
" Mappings
"

" Leader character, default is '\'
:let mapleader = ","

" map ,nt to toggle NerdTree
:nnoremap <leader>nt :NERDTree<CR>
" map switch tab left to ,<S-{>
:nnoremap <leader>{ <C-w>h
" map switch tab right to ,<S-}>
:nnoremap <leader>} <C-w>l

:nnoremap <leader>q gT<CR>
:nnoremap <leader>e gt<CR>

"Python 3 interpreter to satisfy Deoplete
let g:python3_host_prog='/usr/local/bin/python3'
let g:loaded_python_provider=1

"Deoplete
let g:deoplete#enable_at_startup=1
let g:deoplete#sources#go#gocode_binary=$GOPATH.'/bin/gocode'
let g:deoplete#sources#go#package_dot=1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#pointer=1

"         ,_---~~~~~----._
"  _,,_,*^____      _____``*g*\"*,
" / __/ /'     ^.  /      \ ^@q   f
"[  @f | @))    |  | @))   l  0 _/
" \`/   \~____ / __ \_____/    \
"  |           _l__l_           I
"  }          [______]           I
"  ]            | | |            |
"  ]             ~ ~             |
"  |                            |
"Go-vim specific
let g:go_auto_type_info=1
let g:deoplete#sources#go#unimported_packages=1
let g:go_fmt_command = "goimports"





"
"
"
" 	VIM-AIRLINE
"
"
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
