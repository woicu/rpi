#!/bin/bash

# Nohup to avoid getting stuck as suggested in https://github.com/moby/moby/issues/438#issuecomment-262188806
time nohup docker pull arm32v7/telegraf:latest
time nohup docker pull arm32v7/influxdb:latest
time nohup docker pull arm32v7/chronograf:latest

rm ./nohup.out
