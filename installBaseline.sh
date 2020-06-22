#!/bin/bash -x 

trap read debug 

# set hostname, adds the last octent to insure uniqueness

read -p "Input Hostname: " HostnameTyped
NumExtention=$( hostname  -I  | awk -F. '{ print $NF }' )
hostnamectl set-hostname " $HostnameTyped $NumExtention"


yum install vim -y 






