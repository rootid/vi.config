#!/bin/sh

#Don't use blindly 
echo "Don't use blindly"
exit 1

#### Prerq : create the link
# Download JDK from oracle
## mv jdk1.7.0_55/ /usr/java/
#####ln -s /usr/java/jdk1.7.0_65 /usr/java/latest

#Put the content in the ~/.bashrc
export JAVA_HOME=/usr/java/latest
if ! echo ${PATH} | grep -q ${JAVA_HOME} ; then
   export PATH="${JAVA_HOME}/bin:${PATH}"
fi

PS1="\u@mat \W\$ "


##ppa:kalakris/tmux
sudo add-apt-repository ppa:kalakris/tmux
sudo apt-get update
sudo apt-cache show tmux 


## get the 256 color
wget http://www.vim.org/scripts/download_script.php?src_id=4568 -O colortest

 	
for i in {0..255} ; do
  printf "\x1b[38;5;${i}mcolour${i}\n"
done

