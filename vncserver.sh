#!/bin/bash -x 

trap read debug 



## read this howto:  https://www.thegeekdiary.com/how-to-install-and-configure-vnc-tigervnc-server-in-centos-rhel-7/  
## make sure you use the :3 in the service files.   if you do an nmap ot the host you will see the sevice runs in 5901!!



#   49  vim /etc/systemd/system/vncserver_oracle@:3.service
#   50  vim /etc/systemd/system/vncserver_build@:3.service
#   51  systemctl enable vncserver_build@:3.service
#   52  systemctl daemon-reload
#   53  vncpasswd build

