#!/bin/bash
check_redirect(){
default_send_redirect=`cat /proc/sys/net/ipv4/conf/default/send_redirects`
if [ "$default_send_redirect" == "0" ]; then
        echo "net.ipv4.conf.default.send_redirects=0"
else
        echo "net.ipv4.conf.default.send_redirects=1"
fi
}
check_redirect
