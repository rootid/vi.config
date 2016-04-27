"Minimum settings maximum coding
"NOTE : alias for ctrl = c,ctrl,C alias for enter = cr	
"
:set number 
:set hlsearch
:set incsearch 
:set history=1000
:set ruler 	
:set undolevels=1000	


"enable filetype,plugin,indent on
:filetype plugin indent on

":set relativenumber

"set search with lighBlue
:hi Search ctermbg=LightBlue

"make backspace work like most other apps
:syn on	

:set wildignore+=*.so,*.swp,*.zip,*.pyc,*.class	

"Fast window resizing with +/- keys (horizontal); / and * keys (vertical)	
if bufwinnr(1) 	
map + <C-W>+	
map - <C-W>-	
map < <c-w><	
map > <c-w>>	
endif 	

"Allow fast switching between window	
:map <C-H> <C-W>h 	
:map <C-L> <C-W>l 	

"Replace esc support with jk 	
:inoremap jk <esc>	

"Indentation
vnoremap < <gv
vnoremap > >gv

" Moved all tabs and spaces to ftplugins 
":set backspace=2 
":set tabstop=8
":set expandtab
":set shiftwidth=4
":set softtabstop=4
"
"
"Session 
function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction


":mksession! <file_name>
"vim -S <file_name>
" Updates a session, BUT ONLY IF IT ALREADY EXISTS
function! UpdateSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe "mksession! " . b:sessionfile
    echo "updating session"
  endif
endfunction

"au VimEnter * nested :call LoadSession()

map ,l :call LoadSession()<CR>
"au VimLeave * :call MakeSession()
map ,c :call MakeSession()<CR>
map ,u :call UpdateSession()<CR>


"open the .h and .cpp files if one of the file is open use ,o
function! OpenOther()
    if expand("%:e") == "cpp"
        exe "vsplit" fnameescape(expand("%:p:r:s?src?include?").".h")
    elseif expand("%:e") == "h"
        exe "vsplit" fnameescape(expand("%:p:r:s?include?src?").".cpp")
    endif
endfunction

nmap ,o :call OpenOther()<CR>



"Edit text in vim
":set tw=0 wrap linebreak

set backspace=2  "compatible with version 5.4 and earlier

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"set wrap
"set textwidth=79
"set formatoptions=qrn1
"set colorcolumn=85


let mapleader = ","
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


nnoremap <leader>w <C-w>v<C-w>l

"strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
