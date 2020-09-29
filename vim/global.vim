"Basic configuration
set nocompatible
set noerrorbells
filetype off
filetype plugin indent on
syntax on
set ttyfast
set number
"set relativenumber
set nowrap
set wildmenu
set wildmode=longest:list,full
set splitright
set splitbelow
set encoding=utf-8
set laststatus=2
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}\ %*            "file format
set statusline +=%3*%y\ %*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m\ %*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

set title                  " Change the terminal title.
set splitright
set ff=unix
set backspace=indent,eol,start
set cursorline
set cursorcolumn
set colorcolumn=81
" Hide buffers instead of unloading them:
set hidden

" Treat tabs as 4 spaces, indent 2 spaces:
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround
set tabstop=4

" Case sensitive only when the search pattern contains upper case character:
set ignorecase
set smartcase
set hlsearch
set incsearch

" Disable stupid backup and swap files - they trigger too many events
set nobackup
set nowritebackup
set noswapfile

" Set wordlist for dictionary and thesaurus
if has('win32') || has('win64')
    set dictionary+=~\vimfiles\dictionary\english-words.txt
    set thesaurus+=~\vimfiles\thesaurus\roget13a.txt
else
    set dictionary+=~/.vim/dictionary/english-words.txt
    set thesaurus+=~/.vim/thesaurus/roget13a.txt
endif
" Enable completion with dictionary words
set complete+=k
" Search for files using find command
set path+=**
" Set diff options
" refx https://vimways.org/2018/the-power-of-diff/
set diffopt=internal,filler,closeoff,vertical,context:3,indent-heuristic,algorithm:patience
" Change to home directory
cd ~
" theme
set guifont=Ubuntu\ Mono:h12
set t_Co=256
colorscheme gruvbox
set background=dark
" Set python path
if has('win32') || has('win64')
    set pythonthreehome=C:\Python382
    set pythonthreedll=C:\Python382\python38.dll
endif
" Disable gui components for more screen realestate only for gvim
if has('win32') || has('win64')
    set guioptions-=m  "menu bar
    set guioptions-=T  "toolbar
    set guioptions-=r  "scrollbar
endif

