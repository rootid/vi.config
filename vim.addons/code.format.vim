
map <C-K> :pyf /usr/share/vim/addons/syntax/clang-format-3.9.py<cr>
"imap <C-K> <c-o>:pyf /usr/share/vim/addons/syntax/clang-format-3.8.py<cr>


"map <C-K> :pyf /usr/local/share/clang/clang-format.py<cr>
"imap <C-K> <c-o>:pyf /usr/local/share/clang/clang-format.py<cr>

"map <C-K> :pyf /home/vikram/vi.config/vim.addons/clang-format.py<cr>
"imap <C-K> <c-o>:pyf /usr/share/vim/addons/syntax/clang-format-3.8.py<cr>


"function! GetHTML()
"python << EOF
"import vim, bs4,urllib
"handle = urllib.urlopen("index.html")
"soup = bs4.BeautifulSoup(handle.read())
"vim.current.buffer[:] = soup.prettify().split('\n')
"EOF
"endfunction

function! GetHTML()
python << EOF
import vim, bs4,urllib
soup = bs4.BeautifulSoup(open(vim.current.buffer.name) )
vim.current.buffer[:] = soup.prettify().split('\n')
EOF
endfunction


"Format html
"command Thtml set ft=html | execute "%!tidy -q -i"
command Thtml set ft=html | execute "call GetHTML()"

"Format xml
"command Txml set ft=xml | execute "%!tidy -q -i"

"Use xmllint instead of tidy
command Txml set ft=xml | execute "%!xmllint --format --recover - 2>/dev/null"

"Format json
command Tjsn set ft=json | execute "%!jq ."

"Format json
command Tjs set ft=js | execute "%!js-beautify"

"Sort CSS
command Scss set ft=css | execute "g/{/ .+1,/}/-1 sort"


