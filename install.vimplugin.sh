#!/bin/sh

do_install() {
    #install the nerdtree
    git clone git://github.com/scrooloose/nerdtree.git ${PWD}/bundle/nerdtree
}

#do_uninstall() {
#    cd ${PWD}/bundle && rm -rf nerdtree.git
#}
do_install

