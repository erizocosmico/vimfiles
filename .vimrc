if has('vim_starting')
  " Required:
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'zchee/deoplete-go', {'build': {'unix': 'make'}}
NeoBundle 'carlitux/deoplete-ternjs', { 'build': { 'mac': 'npm install -g tern', 'unix': 'npm install -g tern' }}
NeoBundle 'majutsushi/tagbar'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'bling/vim-airline'
NeoBundle 'fatih/vim-go'
NeoBundle 'ElmCast/elm-vim'
NeoBundle 'joshdick/onedark.vim'
NeoBundle 'luochen1990/rainbow'
NeoBundle 'ctrlpvim/ctrlp.vim'

" Required:
call neobundle#end()

NeoBundleCheck

set background=dark
set termguicolors
colorscheme onedark

set guifont=Hack:h12
set guioptions-=L
set guioptions-=r
syntax enable
syntax on
filetype plugin on
set number
set nobackup
set nowritebackup
set noswapfile
set history=100
set ruler
set completeopt-=preview

let g:polyglot_disabled = ['elm', 'go']
let g:go_disable_autoinstall = 0
let g:elm_format_autosave = 1

" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Run deoplete.nvim automatically
call deoplete#enable()
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1

" Airline show always
set laststatus=2

" Indent
filetype plugin indent on
set expandtab

" Custom indentations per file
autocmd FileType html setlocal shiftwidth=4 tabstop=4 backspace=2
autocmd FileType jsx,javascript,css,less,scss,sass,python,ruby setlocal shiftwidth=2 tabstop=2 backspace=2

" Rainbow parenthesis
let g:rainbow_active = 1

" Go syntax highlighting
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1

" Enable goimports instead of go fmt
let g:go_fmt_command = "goimports"

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
nmap <C-x> :TagbarToggle<CR>

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 0

" Elm
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" Airline
let g:airline_left_sep= '░'
let g:airline_right_sep= '░'

" NerdTree
map <C-z> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 24
let g:NERDTreeMinimalUI = 1
autocmd VimEnter * if (0 == argc()) | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

