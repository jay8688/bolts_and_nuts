" color scheme of the moment:
colorscheme default
set lines=999
set columns=160

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
