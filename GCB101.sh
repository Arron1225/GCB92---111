#!/bin/bash
check_kdump() {
kdump_test=`systemctl is-enabled kdump.service`
if [ "$kdump_test" == "disabled" ]; then
        echo "kdump is disable"
else
        echo "kdump is enable"
fi
}
check_kdump
