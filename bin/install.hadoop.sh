#!/bin/sh

#Don't use blindly 
echo "Don't use blindly"
exit 1

##Add hadoop user
sudo addgroup hadoop
sudo adduser --ingroup hadoop hduser

#change user
su - hduser

#create keygen
#ssh-keygen -t rsa -P ""

#Disable ipv6
#net.ipv6.conf.all.disable_ipv6 = 1
#net.ipv6.conf.default.disable_ipv6 = 1
#net.ipv6.conf.lo.disable_ipv6 = 1

#install java
mkdir -p /usr/local/hadoop

sudo chown -R hduser:hadoop /usr/local/hadoop

ln -s /usr/local/hadoop/hadoop-1.0.3 /usr/local/hadoop/latest

sudo mkdir -p /app/hadoop/tmp
sudo chown hduser:hadoop /app/hadoop/tmp
# ...and if you want to tighten up security, chmod from 755 to 750...
sudo chmod 750 /app/hadoop/tmp
