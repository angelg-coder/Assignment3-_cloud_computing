#!/bin/bash

DATE=$(date +%F)
BACKUP_FILE="gitea-backup-$DATE.tar.gz"

# Compress all the Gitea data
sudo tar -czvf $BACKUP_FILE /data/assignment3/gitea

# Upload to S3
aws s3 cp $BACKUP_FILE s3://gitea-assignment3-backup/

echo "Backup uploaded to S3"