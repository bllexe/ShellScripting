#!/bin/bash


SOURCE_DIR="/hom/user/documents"
BACKUP_DIR="/home/user/backup"


TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

tar -czvf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

echo "Backup created: $BACKUP_DIR/$BACKUP_NAME"

#  cron job runs weekly
#
# cron "0 0 * * 0" "/home/user/backup.sh"
