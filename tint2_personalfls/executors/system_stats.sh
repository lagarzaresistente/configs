#!/bin/bash

cpu_usage=$(top -bn 1 | grep "Cpu(s)" | awk '{print $2 + $4}')
ram_usage=$(free -m | awk '/Mem:/ {print $3}')
disk_free=$(df -h | awk '$NF=="/"{printf "%s", $4}')

echo " $cpu_usage% |  $ram_usage MB |  $disk_free"
