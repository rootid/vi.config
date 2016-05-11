"Clean blank lines
nnoremap <C-c> :g/^$/d<CR>

"Format html
command Thtml set ft=html | execute "%!tidy -q -i"

"Format xml
command Txml set ft=xml | execute "%!tidy -q -i"


set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set laststatus=2
