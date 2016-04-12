#!/bin/sh
#Add the private ssh keys to the ssh-agent
cd ${HOME}/.ssh/

for file_name in *.pub
do
    pvt_key_file=${file_name%.pub}
    ssh-add ${pvt_key_file}
    echo "added ${pvt_key_file} in the ssh-agent."
done

#to create ssh rsa keys ssh-keygen -t rsa -C "my_email@gmail.com"
