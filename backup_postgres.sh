#!/bin/bash

# PostgreSQL settings
HOST="localhost"
PORT="5432"
DB_NAME="your_database_name"
USER="your_username"

# Backup directory
BACKUP_DIR="/path/to/backup/directory"

# Timestamp for backup filename
TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_${TIMESTAMP}.sql"

# Perform the backup using pg_dump
pg_dump -h "$HOST" -p "$PORT" -U "$USER" -Fc "$DB_NAME" -f "$BACKUP_FILE"

# Check if backup was successful
if [ $? -eq 0 ]; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed"
fi
