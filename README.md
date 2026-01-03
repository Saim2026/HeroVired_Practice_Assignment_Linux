# Practice Assignment on Testing, Linux and Servers

This repository contains the implementation for setting up and managing a secure, monitored, and well-maintained development environment on Linux Servers. The repository contains scripts and files for Practice Assignment on Testing, Linux and Servers, as part of a DevOps assignment. 

## Objective
The objective of this project is to assist a Senior DevOps Engineer in:

- System monitoring setup  
- User management and access control  
- Automated backups for Apache and Nginx web servers for users Sarah & Mike. 

The full report with implementation details, commands, and screenshots is attached as **`Linux_Assignment_Report.pdf`**.  
**Backup scripts:** `apache_backup.sh` and `nginx_backup.sh`.

------

## Task 1 – System Monitoring

Configured system monitoring tools to ensure visibility into system health and performance.

### Tools & Commands Used:

- Install `htop`  for CPU, memory, and process monitoring

- `df -h` Monitor CPU, memory, disk, and processes

- `du -sh` for directory-level storage analysis

- `ps` for identifying resource-intensive processes

- Log system metrics to files

-------------

## Task 2 – User Management

Created secure user accounts with isolated workspaces and enforced password policies.

### Users Creation

Created users **Sarah** and **Mike**

### Workspace Directories:

Created isolated directories for both Sarah & Mike as:
    Sarah: `/home/sarah/workspace`<br>
    Mike: `/home/mike/workspace`

### Security Controls (Set Permissions):

- Directory permissions set to `700`
- Ownership is restricted to respective users
- Password expiration is enforced every 30 days
- Password warning enabled before expiry
- Enforce password expiration & complexity

  -------------

## Task 3 – Automated Backups (Backup Configuration for Web Servers)

Automated backups for Apache and Nginx servers with scheduled cron jobs and integrity verification.

- Create `/backups`

- Write backup scripts

- Schedule cron jobs (Tuesday 12:00 AM)

- Verify backup integrity

### Apache Backup (for Sarah)
  - **Configuration:** `/etc/httpd/`
  - **Document Root:** `/var/www/html/`
  - **Script:** `apache_backup.sh`

### Nginx Backup (for Mike)
  - **Configuration:** `/etc/nginx/`
  - **Document Root:** `/usr/share/nginx/html/`
  - **Script:** `nginx_backup.sh`
 
### Backup Schedule:
  - Every Tuesday at 12:00 AM
  - Managed via cron

### Cron Job Configuration
`$ sudo crontab` -l 0 0 * * 2 /usr/local/bin/apache_backup.sh <br>
0 0 * * 2 /usr/local/bin/nginx_backup.sh
<br><br>
All scripts, logs, and documentation are available in this repository.<br>
A detailed report with screenshots is attached to this repository. <br>
Thanks!

-------------

**Student Name:** Saima Usman <br>
**Date:** 03-Jan-2026<br>
**Instructor:** Rajan Chettri - HeroVired<br>
**Course Name:** PPMCAD-15

