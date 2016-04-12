#!/bin/bash

base_name=`basename ${PWD}`
if [ "${base_name}" == "vi.config" ]
then
  #enable  snipamte
  ln -sf ${PWD}/snipmate-snippets ${PWD}/bundle/snipmate.vim/snippets
  #enable ultisnips 

  ln -sf ${PWD}/ultisnips-snippets ${PWD}/bundle/snipmate.vim/snippets
else 
  echo "Please switch the current working dir"
  exit 1
fi
