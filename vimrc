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
Plug 'terryma/vim-multiple-cursors'
"Plug 'klen/python-mode'
"Plug 'vim-syntastic/syntastic'
"Plug 'rking/ag.vim'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-unimpaired'
"Plug 'majutsushi/tagbar'

" text formatting
"Plug 'godlygeek/tabular'

" Golang plugin
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Autocomplete for Go
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

call plug#end()

" ================================
" General Settings
" ================================
set mouse=a
set number
set nofoldenable
set background=dark
syntax enable
colorscheme gruvbox
let g:gruvbox_contrast_dark='medium'

" set iterm tab to file basename
set title
set titlestring=%t

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

" ================================
" Golang Settings
" =================================
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

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

" ==========================
" Custom settings
" ==========================

" Center the line when jumping to it
nmap gg ggzz

" Center next search
nnoremap n nzz
nnoremap N Nzz
nnoremap jk <Esc>

"move up and down single screen row
nmap j gj
nmap k gk
nmap <up> g<up>
nmap <down> g<down>

" Lowercase highlight upper case but not the other way around
set incsearch
set ignorecase
set smartcase
set hlsearch

" No highlight shortcut
nnoremap <C-h> :noh<CR>
