" --------------------------------
" Add our plugin to the path
" --------------------------------
python3 import sys
python3 import vim
python3 sys.path.append(vim.eval('expand("<sfile>:h")'))

" --------------------------------
"  Function(s)
" --------------------------------
function! Sqlformat() range
python3 << endOfPython

import vim
from myformatter import formatsql


(sline, scol) = vim.current.buffer.mark('<')
(eline, ecol) = vim.current.buffer.mark('>')

vim.current.buffer[:] = formatsql(vim.current.buffer[:], sline, eline)

endOfPython
endfunction

function! Xmlformat() range
python3 << endOfPython

import vim
from myformatter import formatxml


(sline, scol) = vim.current.buffer.mark('<')
(eline, ecol) = vim.current.buffer.mark('>')

vim.current.buffer[:] = formatxml(vim.current.buffer[:], sline, eline)

endOfPython
endfunction

function! Makelist() range
python3 << endOfPython

import vim
from myformatter import isnumber, makelist


(sline, scol) = vim.current.buffer.mark('<')
(eline, ecol) = vim.current.buffer.mark('>')

vim.current.buffer[:] = makelist(vim.current.buffer[:], sline, eline)

endOfPython
endfunction
" --------------------------------
"  Expose our commands to the user
" --------------------------------
vnoremap <silent> <leader>fs :call Sqlformat()<cr>
vnoremap <silent> <leader>l :call Makelist()<cr>
vnoremap <silent> <leader>fx :call Xmlformat()<cr>
