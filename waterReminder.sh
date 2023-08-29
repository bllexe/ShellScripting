#!/bin/bash


log_file="/home/bilal/Desktop/shellScript/log/$(date +\%Y\%m\%d\%H\%M\%S)_waterReminder.log"
touch "$log_file"
chmod 644 "$log_file"



echo "Time to for drink a couple water"

espeak "Time to for drink a couple water"


echo "$(date +'%Y-%m-%d %H:%M:%S') - Time to drink a couple water" >> "$log_file"

if [ -f previous_log_file ]; then
   rm previous_log_file
fi

#update previous file name
previous_log_file="$log_file"

