#!/bin/bash

# Database credentials
DB_HOST="localhost"
DB_PORT="27017"
DB_NAME="pa11y-webservice"

# Backup directory
BACKUP_DIR="backups/mongodb"

# Create backup filename with timestamp
BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_$(date +%Y%m%d%H%M%S).dump"

# Perform backup using mongodump
mongodump --host $DB_HOST --port $DB_PORT --db $DB_NAME --out $BACKUP_DIR

# Compress the backup file
tar -czf "${BACKUP_FILE}.tar.gz" -C $BACKUP_DIR $DB_NAME

# Clean up
rm -r $BACKUP_DIR/$DB_NAME
