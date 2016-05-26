"Clean blank lines
nnoremap <C-c> :g/^$/d<CR>

"Format html
command Thtml set ft=html | execute "%!tidy -q -i"

"Format xml
"command Txml set ft=xml | execute "%!tidy -q -i"

"Use xmllint instead of tidy
command Txml set ft=xml | execute "%!xmllint --format --recover - 2>/dev/null"

"Format json
command Tjs set ft=json | execute "%!jq ."

"Sort CSS
command Scss set ft=css | execute "g/{/ .+1,/}/-1 sort"

let mapleader = ","
""Keep only single blank line
""nnoremap <C-c> g/^\_$\n\_^$/d<CR>
nnoremap <leader>c :g/^\_$\n\_^$/d<CR>
nnoremap <leader>a :?{?+1;/}/-1sort i<CR>

"set statusline=%t       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
