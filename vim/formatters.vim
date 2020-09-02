"Make Ctags
com! MakeTags :!ctags.exe -R .<CR>
com! MakeTagsPython :!ctags.exe -R --fields=+l --languages=python . <CR>
"Creates shell style comment boxes
vnoremap cb :!boxes.exe -d shell<CR>
"Removes comment boxes
vnoremap rcb :!boxes.exe -r<CR>
"Formats a table using tabularize plugin
nnoremap <leader>t :Tab /\|<CR>
"Format XML using python
"com! FormatXML :%!python -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
"Format SQL using python
"com! FormatSQL :%!python -c "import sqlparse, sys; print(sqlparse.format(sys.stdin, reindent=True, keyword_case='upper'))"
"Underline formats for markdown
function! UnderlineHeading(level)
    if a:level == 1
        normal! yypVr=
    elseif a:level == 2
        normal! yypVr-
    else
        normal! I### 
    endif
endfunction

nnoremap <leader>u1 :call UnderlineHeading(1)<CR>
nnoremap <leader>u2 :call UnderlineHeading(2)<CR>
nnoremap <leader>u3 :call UnderlineHeading(3)<CR>

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
      let p = '^\s*|\s.*\s|\s*$'
      if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
         let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
         let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
         Tabularize/|/l1
         normal! 0
         call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
      endif
endfunction
