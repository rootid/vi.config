setlocal ts=4 sts=4 sw=4 noexpandtab
"compiler nodelint
"
"invoke with :make
setlocal makeprg=NODE_DISABLE_COLORS=1\ jslint\ %

"let &l:efm='%A'
"let &l:efm.='%f\, '
"let &l:efm.='line %l\, '
"let &l:efm.='character %c:'
"let &l:efm.='%m' . ','
"let &l:efm.='%Z%.%#' . ','
"let &l:efm.='%-G%.%#'


setlocal grepprg=ack-grep\ --nogroup\ $*
"set grepprg="grep -n $* /dev/null"
setlocal grepformat="%f:%l: %m,%f:%l %m,%f:%l:      %m"
setlocal efm="%f:%l: %m,%f:%l %m,%f:%l:      %m"


