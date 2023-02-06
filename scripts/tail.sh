#!/bin/sh

while true ; do
if [ -f "/var/log/core.out.log" ]; then
     tail -n 500 -f /var/log/core.out.log > /dev/ttyS0 &
     tail -n 500 -f /var/log/core.out.log > /dev/console
     exit 0
fi


done

