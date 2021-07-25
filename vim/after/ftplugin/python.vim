set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set smartindent
set fileformat=unix

"set format program
let &formatprg="black -q -"

" Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with spacebar
nnoremap <leader><space> za
" Fold all
nnoremap <leader>a zM
" Unfold all
nnoremap <leader>m zR

setlocal wildignore=*/__pycache__/*,*.pyc

" :setlocal makeprg=python3\ %
" :setlocal errorformat=
compiler python
