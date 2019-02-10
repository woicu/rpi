#!/bin/bash

#Add dtoverlay=w1-gpio,gpiopin=4 in /boot/config.txt before using
t1=`cat /sys/bus/w1/devices/28-000008a*****/w1_slave | grep -oP 't=\K.+'`
t2=`cat /sys/bus/w1/devices/28-000008a*****/w1_slave | grep -oP 't=\K.+'`
t3=`cat /sys/bus/w1/devices/28-000008a*****/w1_slave | grep -oP 't=\K.+'`

curl -i -XPOST 'http://localhost:8086/write?db=telegraf' --data-binary "T1,host=pi value=$t1
T2,host=pi value=$t2
T3,host=pi value=$t3"