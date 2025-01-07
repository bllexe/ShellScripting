#!/bin/bash

echo "CPU status"

top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'

echo "Memory status"

free -h | grep Mem | awk '{print $3 "/" $2 " (" $3/$2*100 "%" ")"}'

echo "Disk status"

df -h | grep '/dev/sda1' | awk '{print $5 " used on " $6}'

