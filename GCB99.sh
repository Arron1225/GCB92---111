#!/bin/bash
check_ftp() {
vsftpd_check=`systemctl is-enabled vsftpd.service`
if [ "$vsftpd_check" == "disabled" ]; then
        echo "vsftpd is disable"
else
        echo "vsftpd is enable"
fi
}
check_ftp
