:let mapleader = ','

"Mapping Keys
:nnoremap <silent> <leader>ev :vsplit $MYVIMRC<CR>
:nnoremap <silent> <leader>sv :source $MYVIMRC<CR>
:inoremap <silent> jk <esc>
:nnoremap <silent> <leader>c :noh<CR><CR>
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
"fzf
:nnoremap <silent> <leader>f :FZF<cr>
"Rupee Symbol
:inoremap <silent> <c-v>rs ₹

