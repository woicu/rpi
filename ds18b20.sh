#!/bin/bash

#Add dtoverlay=w1-gpio,gpiopin=4 in /boot/config.txt before using
t1=`cat /sys/bus/w1/devices/28-000008a*****/w1_slave | grep -oP 't=\K.+'`
t2=`cat /sys/bus/w1/devices/28-000008a*****/w1_slave | grep -oP 't=\K.+'`
t3=`cat /sys/bus/w1/devices/28-000008a*****/w1_slave | grep -oP 't=\K.+'`
