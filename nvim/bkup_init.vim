set nocompatible                " No vi compatability

set timeoutlen=1000
set ttimeoutlen=0

filetype off
" set the runtime path to include Vundle and initialize

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
colors molokai


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
" ES6 support
Plug 'isruslan/vim-es6'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Autocomplete
Plug 'valloric/youcompleteme'
" Change Surround
Plug 'tpope/vim-surround'

" needed to auto update changes
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" TRY Using default
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end() 



" FZF fuzzy finder
" set rtp+=~/.fzf

let NERDTreeShowHidden=1




" all from .vim/vimrc

" Initialize pathogen
" call pathogen#runtime_append_all_bundles() 

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

" colorscheme molokai
" colorscheme pyte

" filetype plugin indent on

map <Leader>r :CommandTFlush<CR>
" map <Leader>f :Rfind 
map <Leader>f :Files<CR>
map <Leader>b :LustyBufferExplorer<CR>

map <Leader>] :bn<CR>
map <Leader>[ :bp<CR>
map <Leader>c :bd<CR>

map <Leader>v :NERDTreeToggle<CR>
map <Leader>m :update<CR>

imap <C-l> <Space>=><Space>

imap <C-S-,> <%= %>

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

autocmd BufRead *.erb set filetype=eruby
autocmd VimEnter * NERDTree

" this shit is not working, using ctrl + w and direction to switch splits
" splits navigation
" map <C-J> <C-W>j
" map <C-K> <C-W>k
" map <C-H> <C-W>h
" map <C-L> <C-W>l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set visualbell                    " No beeping.

ab MHS Mutually Human Software
ab initi initialize

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

inoremap jj <ESC>

    " " Track the engine.
    " Plugin 'SirVer/ultisnips'
    " "
    " " Snippet are separated from the engine. Add this if you want them:
    " Plugin 'honza/vim-snippets'
    "
    " " Trigger configuration. Do not use <tab> if you use
    " " https://github.com/Valloric/YouCompleteMe.
    " let g:UltiSnipsExpandTrigger="<tab>"
    " let g:UltiSnipsJumpForwardTrigger="<c-b>"
    " let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    "
    " " If you want :UltiSnipsEdit to split your window.
    " let g:UltiSnipsEditSplit="vertical"
    " " set rtp+=~/support/ultisnips
    " " let g:UltiSnipsSnippetDirectories = ['~/support/ultisnips']
    " " let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', '~/vim-snippets']
    "
    " let g:UltiSnipsSnippetDirectories=[$HOME . "/vim-snippets"]


nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

highlight ColorColumn guibg=#303030
let &colorcolumn="101,".join(range(131,999),",")
