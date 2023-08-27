#!/bin/bash
check_avahi_daemon() {
is_enable=`systemctl is-enabled avahi-daemon.service`
if [ "$is_enable" == "disabled" ]; then
    echo "avahi-daemon is disable"
else
    echo "avahi-daemon is enable"
fi
}
check_avahi_daemon
