:let mapleader = ','
"Mapping Keys
:nnoremap <silent> <leader>ev :vsplit $MYVIMRC<CR>
:nnoremap <silent> <leader>sv :source $MYVIMRC<CR>
:inoremap <silent> jk <esc>
:nnoremap <silent> <leader>c :noh<CR><CR>
"create empty lines
nnoremap <silent> <Enter> o<ESC>
nnoremap <silent> <S-Enter> O<ESC>
"cycling across buffers
:nnoremap <silent> <Space>n :bnext<CR>
:nnoremap <silent> <Space>p :bprevious<CR>
"cycling through tabs
:nnoremap <silent> <C-Left> :tabprevious<CR>
:nnoremap <silent> <C-Right> :tabnext<CR>
"creating split windows
:nnoremap <silent> \| :vsp<CR>
:nnoremap <silent> _ :sp<CR>
"Moving around windows
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-k> <c-w>k
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-h> <c-w>h
"Resizing windows
nnoremap <silent> <A-S-l> :vertical resize +1<CR>
nnoremap <silent> <A-S-h> :vertical resize -1<CR>
nnoremap <silent> <A-S-j> :resize +1<CR>
nnoremap <silent> <A-S-k> :resize -1<CR>
"Nerd Tree Toggle
:nnoremap <silent> <leader>n :NERDTreeToggle<CR>
"Sorting and Unique
nnoremap <silent> <leader>s :sort<CR>
nnoremap <silent> <leader>u :sort u<CR>
"Moving of code blocks
vnoremap <silent> <Tab> >gv
vnoremap <silent> <S-Tab> <gv
"Visual yank to/from system register
vmap <silent> <C-Y> "+y
nmap <silent> <C-P> "+p
"Swap arguments
:nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>
:nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>
:nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>

