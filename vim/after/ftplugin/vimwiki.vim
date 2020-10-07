"change the directory to wiki root
:cd ~/wiki/

function! Gen_diary_tmplt()
    let save_pos = getpos(".")
    exec ":silent 0r !~/.vim/bin/gen-vimwiki-diary-tmplt.py"
    call setpos(".", save_pos)
endfunction

let diaryhome=$HOME.'/wiki/diary'
if line('$') == 1 && empty(getline(1)) && expand('%:p:h') == diaryhome
        :call Gen_diary_tmplt()
endif

function! MakeHeading(level)
    if a:level == 1
        normal! I# 
    elseif a:level == 2
        normal! I## 
    elseif a:level == 3
        normal! I### 
    elseif a:level == 4
        normal! I#### 
    elseif a:level == 5
        normal! I##### 
    else
        normal! I###### 
    endif
endfunction

nnoremap <leader>h1 :call MakeHeading(1)<cr>
nnoremap <leader>h2 :call MakeHeading(2)<cr>
nnoremap <leader>h3 :call MakeHeading(3)<cr>
nnoremap <leader>h4 :call MakeHeading(4)<cr>
nnoremap <leader>h5 :call MakeHeading(5)<cr>
nnoremap <leader>h6 :call MakeHeading(6)<cr>
