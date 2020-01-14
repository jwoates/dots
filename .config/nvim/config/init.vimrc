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

" TRY Using default
Plug '/usr/local/opt/fzf'

" fuzy finder, the best, much wow
Plug 'junegunn/fzf.vim'

" had to comment this out as it was having issues in nvim
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end() 
" Run : PlugInstall to install plugins

" FZF fuzzy finder
" set rtp+=~/.fzf

let NERDTreeShowHidden=1

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
"
