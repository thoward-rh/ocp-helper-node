#!/bin/bash

## Run as root

virt-install \
--name centos7 \
--ram 4096 \
--disk path=./centos7.qcow2,size=8 \
--vcpus 2 \
--os-type linux \
--os-variant centos7 \
--network bridge=bridge0 \
--graphics none \
--console pty,target_type=serial \
--location 'http://mirror.i3d.net/pub/centos/7/os/x86_64/' \
--extra-args 'console=ttyS0,115200n8 serial'
-x "ks=http://192.168.1.100/helper-ks.cfg"
