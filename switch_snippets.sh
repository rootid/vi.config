#!/bin/bash

base_name=`basename ${PWD}`
if [ "${base_name}" == "vi.config" ]
then
  #enable  snipamte
  echo "Enabling snipmate"
  ln -sf ${PWD}/vim.snippets/snipmate-vim ${PWD}/bundle/snipmate.vim/snippets
  
  #enable ultisnips 

  echo "Enabling Ultisnips"
  ln -sf ${PWD}/vim.snippets/ultisnips-vim ${HOME}/.vim/UltiSnips
else 
  echo "Please switch the current working dir"
  exit 1
fi
