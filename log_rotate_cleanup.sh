#!/bin/bash

# Configuration
LOG_DIR="./logs"
ARCHIVE_DIR="./logs/archive"
MAX_AGE=7          # days
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
LOG_FILE="rotation.log"

# Create archive folder if it doesn't exist
mkdir -p $ARCHIVE_DIR

# Rotate logs
for file in $LOG_DIR/*.log; do
    if [ -f "$file" ]; then
        mv "$file" "$ARCHIVE_DIR/$(basename $file).$TIMESTAMP"
        echo "$(date) | Rotated $file" >> $LOG_FILE
    fi
done

# Clean up logs older than MAX_AGE
find $ARCHIVE_DIR -type f -mtime +$MAX_AGE -exec rm {} \;
echo "$(date) | Cleanup complete" >> $LOG_FILE

