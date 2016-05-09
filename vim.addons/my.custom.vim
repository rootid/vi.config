"Clean blank lines
nnoremap <C-c> :g/^$/d<CR>

"Format html
command Thtml set ft=html | execute "%!tidy -q -i"

"Format xml
command Txml set ft=xml | execute "%!tidy -q -i"
