
set nocompatible                " No vi compatability
set timeoutlen=1000
set ttimeoutlen=0

filetype off
" auto read settings
set autoread
au FocusGained,BufEnter * :checktime
autocmd vimenter * NERDTree
let g:NERDTreeIgnore = ['^.git$', '^.circleci$', '^node_modules$', '^build$']
" set clipboard=unnamedplus
set clipboard=unnamed
set backspace=indent,eol,start

" Change Leader Key
let mapleader=','

" disable line wrap
set wrap!
set tabstop=4
set shiftwidth=4
set expandtab

" disable matching highlights
set nohlsearch
let loaded_matchparen = 0
" hi MatchParen cterm=bold ctermbg=none ctermfg=none
" let g:loaded_matchparen=1
" hi MatchParen cterm=none ctermbg=none ctermfg=white

autocmd! FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
let g:indent_guides_enable_on_vim_startup = 0

set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set hidden

let g:LustyExplorerSuppressRubyWarning = 1

set number
set numberwidth=5
set cursorline
syntax on

set guifont=Monaco:h13.00
set vb

" no toolbar
set guioptions-=T
" console dialogs
set guioptions+=c

colors molokai
" colorscheme molokai
" colorscheme pyte

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=$HOME/.config/nvim/backups " Where backups will go.
set directory=$HOME/.config/nvim/tmp     " Where temporary files will go.

autocmd BufRead *.erb set filetype=eruby
autocmd VimEnter * NERDTree

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set visualbell                    " No beeping.

ab MHS Mutually Human Software
ab initi initialize

" long line gutter
highlight ColorColumn guibg=#303030
let &colorcolumn="101,".join(range(131,999),",")
