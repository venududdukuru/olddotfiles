"Function to trim whitespace
function! TrimWhiteSpace()
	exec "normal mz"
	%s/\s*$//g
	exec "normal `z"
endfunction

"Trim Whitespaces
map <F2> :call TrimWhiteSpace()<cr>

