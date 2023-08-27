#!/bin/bash
check_ICMP(){
send_redirects=`cat /proc/sys/net/ipv4/conf/all/send_redirects`
if [ "$send_redirects" == "0" ]; then
        echo "net.ipv4.conf.all.send_redirects=0"
else
        echo "net.ipv4.conf.all.send_redirects=1"
fi
}
check_ICMP
