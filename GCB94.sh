#!/bin/bash
check_rsyncd() {
syncd_check=`systemctl is-enabled rsyncd.service`
if [ "$rsyncd_check" != "disabled" -a "$rsyncd_check" != "enabled" ]; then
        echo  "rsyncd does not exist"
elif [ "$rsyncd_check" == "disabled" ]; then
        echo "rsyncd is disable"
else
        echo "rsyncd is enable"
fi
}	
check_rsyncd
