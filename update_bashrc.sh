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
