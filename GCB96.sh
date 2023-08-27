#!/bin/bash
check_snmp() {
snmp_check=`systemctl is-active snmpd`
if [ "$snmp_check" == "active" ]; then
        echo "snmp is running"
else
        echo "snmp is not working"
fi
}
check_snmp
