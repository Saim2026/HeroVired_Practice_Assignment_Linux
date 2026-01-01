#!/bin/bash

# -----------------------------
# Nginx Backup Script
# -----------------------------

# Get current date
DATE=$(date +%F)

# Backup file path
BACKUP_FILE="/backups/nginx_backup_$DATE.tar.gz"

# Source directories (Ubuntu-friendly)
NGINX_CONFIG="/etc/nginx"
NGINX_HTML="/usr/share/nginx/html"

# Ensure backup directory exists
sudo mkdir -p /backups

# Create backup
sudo tar -czf $BACKUP_FILE $NGINX_CONFIG $NGINX_HTML

# Log backup creation
echo "$(date) - Nginx backup created: $BACKUP_FILE" | sudo tee -a /var/log/nginx_backup.log

# Verify backup contents
sudo tar -tzf $BACKUP_FILE | sudo tee -a /var/log/nginx_backup_verify.log
