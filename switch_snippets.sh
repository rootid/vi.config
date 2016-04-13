#!/bin/bash

base_name=`basename ${PWD}`
if [ "${base_name}" == "vi.config" ]
then
  #enable  snipamte
  #echo "Enabling snipmate"
  #ln -sf ${PWD}/vim.snippets/snipmate-vim ${PWD}/bundle/snipmate.vim/snippets
  
  #enable ultisnips 

  echo "Enabling Ultisnips"
  ln -sf ${PWD}/vim.snippets/ultisnips-vim ${HOME}/.vim/UltiSnips


  #echo "Enabling ftpplugin"
  #ln -sf ${PWD}/vim.snippets/${HOME}/.vim/UltiSnips


  echo "Enabling ftdetect"
  ln -sf ${PWD}/ftplugin.vim/ftdetect ${HOME}/.vim/ftdetect

  echo "Enabling syntax"
  ln -sf ${PWD}/ftplugin.vim/syntax ${HOME}/.vim/syntax

  echo "Enabling ftplugin"
  ln -sf ${PWD}/ftplugin.vim/ftplugin ${HOME}/.vim/ftplugin 

  echo "Enabling after"
  ln -sf ${PWD}/ftplugin.vim/ftplugin-after/after ${HOME}/.vim/after

else 
  echo "Please switch the current working dir"
  exit 1
fi
