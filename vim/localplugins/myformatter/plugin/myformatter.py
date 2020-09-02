import sqlparse
from lxml import etree

def isnumber(str):
    return all(c.isdigit() for c in str)


def formatsql(curr_buffer, sline, eline):
    sql = ''.join(curr_buffer[sline-1:eline])
    fsql = sqlparse.format(sql, reindent=True, keyword_case='upper')
    fsql = fsql.split('\n')
    del curr_buffer[sline-1:eline]
    for idx, val in enumerate(fsql):
        curr_buffer.insert(sline-1+idx,val)
    return curr_buffer


def makelist(curr_buffer, sline, eline):
    quote = '\''
    fstring = ', '.join(str if isnumber(str) else quote + str + quote for str
            in curr_buffer[sline-1:eline])
    del curr_buffer[sline-1:eline]
    curr_buffer.insert(sline-1,'(' + fstring + ')')
    return curr_buffer


def formatxml(curr_buffer, sline, eline):
    xml_str = ''.join(curr_buffer[sline-1:eline])
    root = etree.fromstring(xml_str)
    fstring = etree.tostring(root, pretty_print=True).decode()
    fstring = fstring.split('\n')
    del curr_buffer[sline-1:eline]
    for idx, val in enumerate(fstring):
        curr_buffer.insert(sline-1+idx,val)
    return curr_buffer


