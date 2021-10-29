set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" Lucius colorscheme
Plug 'jonathanfilip/vim-lucius'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Auto add 'end'
Plug 'tpope/vim-endwise'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter'

" Text editing
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'

" Rails
Plug 'tpope/vim-rails'

if filereadable(expand("~/.custom-plugins.vim"))
  source ~/.custom-plugins.vim
endif

call plug#end()
syntax on

" Move swp files to central place
set swapfile
set dir=~/.tmp//

" Display options
set nocursorline
set number

set t_Co=256
colorscheme lucius
LuciusDark

let g:airline_theme = 'lucius'
set laststatus=2

filetype plugin indent on

" Autocomplete
set wildmenu
set wildmode=list:longest,full
set complete=.,w,b,u,U,t,i,d
set wildignore+=*/node_modules/*,*.pyc

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

" Fugitive bindings
map <silent> <Leader>gb :Git blame<CR>
map <silent> <Leader>gg :GBrowse<CR>

au BufRead,BufNewFile *.jbuilder setf ruby

" Paste mode
set pastetoggle=<F1>
map <Leader>p :set invpaste<cr>

" Source custom vim from ~/.custom.vim
if filereadable(expand("~/.custom.vim"))
  source ~/.custom.vim
endif
