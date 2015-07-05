#!/bin/bash


#NOTE : get the latest vim from 3rd party repository
#sudo add-apt-repository ppa:fcwu-tw/ppa
#sudo apt-get update
#sudo apt-get install vim

#Verify the installation
#dpkg -l | grep install

#Check the updated repository
readonly bundledir=${PWD}/bundle

repoList=( 'git://github.com/scrooloose/nerdtree.git' 
           'git://github.com/kien/ctrlp.vim.git'
         )


force_install() {
    for repo in ${repoList[@]}
    do
        echo "repo : ${repo}"
        dest="$bundledir/$(basename ${repo} | sed -e 's/\.git$//')"
        rm -rf $dest
        echo "Cloning $repo into $dest"
        git clone -q $repo $dest
        rm -rf $dest/.git
    done
}

force_install
