#!/bin/bash
echo "===== $(date) =====" >> /var/log/system-monitor/metrics.log
df -h >> /var/log/system-monitor/metrics.log
free -m >> /var/log/system-monitor/metrics.log
ps aux --sort=-%cpu | head >> /var/log/system-monitor/metrics.log
echo "" >> /var/log/system-monitor/metrics.log
