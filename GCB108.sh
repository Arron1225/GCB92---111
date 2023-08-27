#!/bin/bash

check_forward() {
iptest=`cat /proc/sys/net/ipv4/ip_forward`
if [ "$iptest" == "0" ]; then
        echo "net.ipv4.ip_forward=0 "
else
        echo"net.ipv4.ip_forward=1"
fi
ipv6test=`cat /proc/sys/net/ipv6/conf/all/forwarding`
if [ "$ipv6test" == "0" ]; then
        echo "net.ipv6.conf.all.forwarding=0"
else
        echo "net.ipv6.conf.all.forwarding=1"
fi
}
check_forward
