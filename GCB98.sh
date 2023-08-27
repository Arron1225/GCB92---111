#!/bin/bash
check_samba() {
smb_test=`systemctl is-enabled smb.service`
if [ "$smb_test" == "disabled" ]; then
        echo "smb is disable"
else
        echo "smb is enable"
fi
}
check_samba
