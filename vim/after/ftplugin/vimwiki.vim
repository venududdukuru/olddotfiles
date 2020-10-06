"change the directory to wiki root
:cd ~/wiki/

function! Gen_diary_tmplt()
    let save_pos = getpos(".")
    exec ":silent 0r !~/.vim/bin/gen-vimwiki-diary-tmplt.py"
    call setpos(".", save_pos)
endfunction

if line('$') == 1 && empty(getline(1))
        :call Gen_diary_tmplt()
endif
