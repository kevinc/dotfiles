let g:NERDTreeNodeDelimiter = "\u00a0"
map <Leader>. :CommandT .<CR>
map <Leader>tf :CommandTFlush<CR>
set guifont=Hack:h14
autocmd BufWritePre *.py Black
autocmd BufWritePost *.py call Flake8()
let g:jedi#use_tabs_not_buffers = 1
autocmd FileType python setlocal completeopt-=preview
autocmd BufWritePre * %s/\s\+$//e
let g:UltiSnipsExpandTrigger="<Leader>z"
set colorcolumn=88
set incsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
map g/ <Plug>(incsearch-stay)

let g:EditorConfig_exclude_patterns = ['fugitive://.*']
au FileType gitcommit let b:EditorConfig_disable = 1

nmap <silent> <Leader>d <Plug>(coc-definition)
nmap <silent> <Leader>r <Plug>(coc-rename)
nmap <silent> <Leader>rf <Plug>(coc-references)

au BufNewFile,BufRead *.prince setlocal shiftwidth=4 tabstop=4 ft=jinja expandtab
au BufNewFile,BufRead *.tsx,*.ts,*.js,*.jsx setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

let g:prettier#autoformat_config_present = 1
let g:prettier#autoformat_require_pragma = 0
