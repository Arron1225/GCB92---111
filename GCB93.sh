#!/bin/bash
check_chrony(){
if grep -q "^server " "/etc/chrony.conf"; then
        echo "NTP server is configured."
elif grep -q "^pool " "/etc/chrony.conf"; then
        echo "NTP pool is configed"
else
     echo "Neither NTP server nor pool is configed."
fi
}
check_chrony
