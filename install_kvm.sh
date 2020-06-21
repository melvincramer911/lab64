#!/bin/bash -x

funky(){ 

trap read debug 

echo "verify I have support for virtualisation on amd"
grep -e 'svm' /proc/cpuinfo

#echo "verify I have support for virtualisation on intel"
#grep -e 'vmx' /proc/cpuinfo

echo "Make sure you have kvm in the kernel"
lsmod | grep kvm

echo "make sure Selinux is in Permissive mode"
setenforce 0

echo "We will install qemu-kvm and qemu-img packages at first. These packages provide the user-level KVM and disk image manager."
yum install qemu-kvm qemu-img -y

echo "install virt-manager libvirt-client virt-install libvirt"
yum install virt-manager libvirt libvirt-python libvirt-client -y

echo "install Virtualization Client, Virtualization Platform and Virtualization Tools to install"
yum groupinstall virtualization-client virtualization-platform virtualization-tools -y 

echo "restart libvirtd to so it reads the configuration"
systemctl restart libvirtd

echo "now start virt-manager in the gui"
}


funky




