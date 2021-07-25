"set the format program
let &formatprg="python3 -c \"import sqlparse, sys; print(sqlparse.format(sys.stdin, reindent=True, keyword_case='upper'))\""
