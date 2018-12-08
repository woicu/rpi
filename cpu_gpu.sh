#!/bin/bash

cpu_temp=`cat /sys/class/thermal/thermal_zone0/temp`
cpu_temp=`echo $((cpu_temp/100)) | sed 's/.$/.&/'`
echo $cpu_temp


gpu_temp=`/opt/vc/bin/vcgencmd measure_temp | grep -o -P '=\K.{0,4}+'`
echo $gpu_temp

curl -i -XPOST 'http://ip:8086/write?db=influx' --data-binary "cpu_temp,host=pi value=$cpu_temp
gpu_temp,host=pi value=$gpu_temp"
