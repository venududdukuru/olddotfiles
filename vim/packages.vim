"Minimalist Package Manager Vimplug
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdtree'
    Plug 'tmhedberg/SimpylFold'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'itchyny/lightline.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'godlygeek/tabular'
    Plug 'morhetz/gruvbox'
    Plug 'jremmen/vim-ripgrep'
    Plug '~/.vim/localplugins/myformatter'
    "Plug 'kiteco/vim-plugin'
call plug#end()

"Commentary plugin for python
autocmd FileType python setlocal commentstring=#\ %s
"SimplyFold plugin for python
let g:SimpylFold_docstring_preview=1
"Ultisnips plugin
let g:snips_author="Venu Madhav Duddukuru"
let g:snips_email="venu.duddukuru@gmail.com"
let g:snips_github="https://github.com/venududdukuru"
let g:UltiSnipsSnippetDirectories = ['~/vimfiles/UltiSnips', 'ultiSnips']
let g:UltiSnipsListSnippets="<c-tab>"

