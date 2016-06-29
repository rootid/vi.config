"Clean blank lines
nnoremap <C-c> :g/^$/d<CR>

let mapleader = ","
""Keep only single blank line
""nnoremap <C-c> g/^\_$\n\_^$/d<CR>
"Use for css sorting
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
