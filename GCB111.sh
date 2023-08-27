#!/bin/bash
check_source() {
accept_ipv4_sourcetest=`cat /proc/sys/net/ipv4/conf/all/accept_source_route`
if [ "$accept_ipv4_sourcetest" == "0" ]; then
        echo "net.ipv4.conf.all.accept_source_route=0"
else
        echo "net.ipv4.conf.all.accept_source_route=1"
fi
accept_ipv6_source=`cat /proc/sys/net/ipv4/conf/default/send_redirects`
if [ "$accept_ipv6_source" == "0" ]; then
        echo "net.ipv6.conf.all.accept_source_route=0"
else
        echo "net.ipv6.conf.all.accept_source_route=1"
fi
}
check_source
