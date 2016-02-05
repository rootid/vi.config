#!/bin/bash


#NOTE : get the latest vim from 3rd party repository
#sudo add-apt-repository ppa:fcwu-tw/ppa
#sudo apt-get update
#sudo apt-get install vim

#Verify the installation
#dpkg -l | grep install

#Check the updated repository
readonly bundledir=${PWD}/bundle
IS_FORCE_INSTALL=false

  #'git://github.com/vim-scripts/taglist.vim'
OldrepoList=( 'git://github.com/scrooloose/nerdtree.git' 
           'git://github.com/kien/ctrlp.vim.git'
           'git://github.com/tpope/vim-surround.git'
           'git://github.com/kien/ctrlp.vim'
           'git://github.com/godlygeek/tabular.git'
           'git://github.com/jieyu/ftplugin.vim'
           'git://github.com/Shougo/neocomplete.vim'
           'git://github.com/tpope/neocomplete.vim'
           'git@github.com:emnh/taglist.vim.git'
           'git://github.com/tpope/vim-commentary.git'
           'git://github.com/tpope/vim-fugitive.git'
           'git://github.com/altercation/vim-colors-solarized.git'
         )

newRepoList=(  
            'git://github.com/SirVer/ultisnips.git'
           )

install() {
    for repo in ${newRepoList[@]}
    do
        echo "repo : ${repo}"
        dest="$bundledir/$(basename ${repo} | sed -e 's/\.git$//')"
        rm -rf $dest
        echo "Cloning $repo into $dest"
        git clone -q $repo $dest
        rm -rf $dest/.git
    done
}

force_install() {
    install
    for repo in ${OldrepoList[@]}
    do
        echo "repo : ${repo}"
        dest="$bundledir/$(basename ${repo} | sed -e 's/\.git$//')"
        rm -rf $dest
        echo "Cloning $repo into $dest"
        git clone -q $repo $dest
        rm -rf $dest/.git
    done
}

install

${IS_FORCE_INSTALL} && force_install 

