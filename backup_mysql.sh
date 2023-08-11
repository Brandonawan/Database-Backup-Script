#!/bin/bash

# Database credentials
DB_USER="root"
# DB_PASSWORD=""    uncomment this line if you want to use a password
DB_NAME="accessibility"

# Backup directory
BACKUP_DIR="backups/mysql"

# Create backup filename with timestamp
BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_$(date +%Y%m%d%H%M%S).sql"

# Perform backup using mysqldump
mysqldump -u $DB_USER $DB_NAME > $BACKUP_FILE

# or if you want to use a password add -p$DB_PASSWORD
# mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_FILE       uncomment this line if you want to use a password 

# # Compress the backup file
gzip $BACKUP_FILE
