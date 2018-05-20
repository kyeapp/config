call plug#begin('~/.vim/plugged')

" helpful utils
"Plug 'scrooloose/nerdcommenter'
"Plug 'sjl/gundo.vim'
"Plug 'tpope/vim-commentary'
"Plug 'itchyny/lightline.vim'
"Plug 'bling/vim-bufferline'
"Plug 'tpope/vim-repeat'
"Plug 'raimondi/delimitmate'

" git commands in vim
"Plug 'tpope/vim-fugitive'

" navigation shortcuts
"Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'klen/python-mode'
"Plug 'vim-syntastic/syntastic'
"Plug 'rking/ag.vim'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-unimpaired'
"Plug 'majutsushi/tagbar'

" text formatting
"Plug 'godlygeek/tabular'

" colors
"Plug 'altercation/vim-colors-solarized'

" Golang plugin
Plug 'fatih/vim-go'
let g:go_fmt_command = "goimports"

" Autocomplete for Go
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

call plug#end()

set mouse=a
set background=dark
set number

" Copy to clipboard
vmap <C-C> "+y

" fuzzy-find with control-T
set rtp+=/usr/local/opt/fzf
map <C-P> :FZF<CR>

" Persistent Undo
set undofile
set undodir=~/.vim/undodir

" Spacing
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

syntax enable
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
colorscheme gruvbox

" Center the line when jumping to it
nmap gg ggzz

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Tab to cycle through autocomplete
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
    function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction"}}}

" Statusline
set statusline=%F "filepath
