"Function to trim whitespace
function! TrimWhiteSpace()
	exec "normal mz"
	%s/\s*$//g
	exec "normal `z"
endfunction
"Trim Whitespaces
map <F2> :call TrimWhiteSpace()<cr>
"Function to MakeList
" function! MakeList() range
"     exec a:firstline . "," . a:lastline . 'normal A,'
" 	exec "normal gvJI($r)"
" endfunction
" map <leader>l :call MakeList()<cr>
function! MDPSanitize()
    exec '%s/Insert/insert/g'
    exec '%s/prjim/OPSBLD_IRI_P1/g'
    exec '%s/prrab/OPSBLD_IRI_P1/g'
    exec '%s/Spanninger, Phil/OPSBLD_IRI_P1/g'
    exec "%s/to_date('\\w\\+-\\w\\+-\\w\\+','\\w\\+-\\w\\+-\\w\\+')/sysdate/g"
endfunction
