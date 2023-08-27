#!/bin/bash
check_squid(){
squid_enable=`systemctl is-enabled squid.service`
if [ "$squid_enable" == "disabled" ]; then
        echo "squid is disable"
else
        echo "squid is enable"
fi
}
check_squid
