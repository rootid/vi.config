
" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'UltiSnips')


"Pathogen needs to run before plugin indent on
execute pathogen#infect()
"generate helptags for everything in 'runtimepath'
call pathogen#helptags() 
