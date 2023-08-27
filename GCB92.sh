#!/bin/bash


check_xinetd(){
 file=/etc/xinetd.service
 if test -f "$file"; then
        echo "\nxinetd.service exist"
 else
        echo "xinetd.service does not exist"
 fi
}	
check_xinetd
