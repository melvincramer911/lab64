#!/bin/bash -x 

trap read debug 

yum update -y 

yum -y install epel-release.noarch

yum -y install ansible 

ansible --version

echo "dont' forget to make your key pairs"




