#!/bin/bash

t1=`cat /sys/bus/w1/devices/28-000008a70c84/w1_slave | grep -oP 't=\K.+'`
t2=`cat /sys/bus/w1/devices/28-000008a719a8/w1_slave | grep -oP 't=\K.+'`
t3=`cat /sys/bus/w1/devices/28-000008a8d67d/w1_slave | grep -oP 't=\K.+'`
