"neocomplete
"
"
"let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#max_list = 10
let g:neocomplete#sources#syntax#min_keyword_length = 2

" <TAB>: completion. (it wonly works for local file
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <expr><C-j>  pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<C-j>" :
       \ neocomplete#start_manual_complete()

function! s:check_back_space() "{{{
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

