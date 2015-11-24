call pathogen#infect()

colorscheme materialtheme
set guifont=Hack:h14
set guioptions-=L
set guioptions-=r
syntax enable
filetype plugin on
set number
set nobackup
let g:go_disable_autoinstall = 0

" Airline show always
set laststatus=2

" Indent
filetype plugin indent on
set expandtab

" Custom indentations per file
autocmd FileType html setlocal shiftwidth=4 tabstop=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType less setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

" Rust format on save
let g:rustfmt_autosave = 1

" JSX no require .jsx ext
let g:jsx_ext_required = 0

" Go syntax highlighting
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1

" Enable goimports instead of go fmt
let g:go_fmt_command = "goimports"

" Enable autocomplete at startup
let g:neocomplete#enable_at_startup = 1

" TagBar
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Add command to toggle tagbar
nmap <F8> :TagbarToggle<CR>

" Ctrl+n to toggle nerdtree
map <C-p> :NERDTreeToggle<CR> 

