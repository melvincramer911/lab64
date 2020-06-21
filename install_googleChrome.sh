#!/bin/bash -x

echo "install chrome"

funky(){ 

trap read debug 

wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

#yum install ./google-chrome-stable_current_*.rpm

yum install ./google-chrome-stable_current_x86_64.rpm -y

google-chrome &

}


funky




