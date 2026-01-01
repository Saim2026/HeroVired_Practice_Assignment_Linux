#!/bin/bash

# -----------------------------
# Apache Backup Script
# -----------------------------

# Get current date
DATE=$(date +%F)

# Backup file path
BACKUP_FILE="/backups/apache_backup_$DATE.tar.gz"

# Source directories (Ubuntu-friendly)
APACHE_CONFIG="/etc/httpd"
APACHE_HTML="/var/www/html"

# Ensure backup directory exists
sudo mkdir -p /backups

# Create backup
sudo tar -czf $BACKUP_FILE $APACHE_CONFIG $APACHE_HTML

# Log backup creation
echo "$(date) - Apache backup created: $BACKUP_FILE" | sudo tee -a /var/log/apache_backup.log

# Verify backup contents
sudo tar -tzf $BACKUP_FILE | sudo tee -a /var/log/apache_backup_verify.log
