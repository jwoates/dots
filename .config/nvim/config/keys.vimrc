inoremap jj <ESC>
map <Leader>r :CommandTFlush<CR>
" map <Leader>f :Rfind 
map <Leader>f :Files<CR>
map <Leader>b :LustyBufferExplorer<CR>
map <Leader>] :bn<CR>
map <Leader>[ :bp<CR>
map <Leader>c :bd<CR>
map <Leader>v :NERDTreeToggle<CR>
map <Leader>m :update<CR>

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

imap <C-l> <Space>=><Space>
imap <C-S-,> <%= %>

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
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==

inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
