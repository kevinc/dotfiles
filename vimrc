set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Auto add 'end'
Plugin 'tpope/vim-endwise'

" Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Text editing
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'

" Rails
Plugin 'tpope/vim-rails'

call vundle#end()
syntax on

" Display options
set nocursorline
set number

set t_Co=256
colorscheme lucius
LuciusDark

let g:airline_theme = 'lucius'
set laststatus=2

filetype plugin indent on

set complete=.,w,b,u,U,t,i,d

" NERDTree mappings
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<cr>

set nowrap

noremap k gk
noremap j gj

" Formatting, indentation and tabbing
set autoindent smartindent
set smarttab                    " Make <tab> and <backspace> smarter
set expandtab
set tabstop=2
set shiftwidth=2
set textwidth=80
set formatoptions-=t formatoptions+=croql

"""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let mapleader=","
let localmapleader=","

vmap s :!sort<CR>
vmap u :!sort -u<CR>

au BufRead,BufNewFile *.jbuilder setf ruby
