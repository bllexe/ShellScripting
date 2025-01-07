#!/bin/bash

LOG_DIR="/var/log"
MAX_AGE=30

find "$LOG_DIR" -type f -name "*.log" -mtime +$MAX_AGE -exec rm -f {} \;
echo "Logs older than $MAX_AGE days have been deleted."


