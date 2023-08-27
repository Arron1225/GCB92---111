#!/bin/bash
check_nis(){
ypserv_check=`systemctl is-enabled ypserv.service`
if [ "$ypserv_check" != "disabled" -a "$ypserv_check" != "enabled" ]; then
        echo "ypserv does not exist"
elif [ "$ypserv_check" == "disabled" ]; then
        echo "ypserv is disable"
else
        echo "ypserv is enable"
fi
}
check_nis
