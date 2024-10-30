call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
" Autocomplete
" Plug 'valloric/youcompleteme'

" Deoplete configuration
Plug 'ervandew/supertab'

" Change Surround
Plug 'tpope/vim-surround'

" TRY Using default
Plug '/usr/local/opt/fzf'

" fuzy finder, the best, much wow
Plug 'junegunn/fzf.vim'

" had to comment this out as it was having issues in nvim

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'tpope/vim-commentary'
call plug#end() 
" Run : PlugInstall to install plugins

" FZF fuzzy finder
" set rtp+=~/.fzf

let NERDTreeShowHidden=1
let g:deoplete#enable_at_startup = 1

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

"
" " Trigger configuration. Do not use <tab> if you use
" " https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" " set rtp+=~/support/ultisnips
" " let g:UltiSnipsSnippetDirectories = ['~/support/ultisnips']
" " let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', '~/vim-snippets']
"
let g:UltiSnipsSnippetDirectories=[$HOME . "/vim_snippets"]
"
