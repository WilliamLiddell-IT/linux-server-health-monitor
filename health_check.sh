#!/bin/bash

echo "=== Server Health Report ===" > report.txt

echo "" >> report.txt
echo "Hostname:" >> report.txt
hostname >> report.txt

echo "" >> report.txt
echo "Date:" >> report.txt
date >> report.txt

echo "" >> report.txt
echo "Disk Usage:" >> report.txt
df -h >> report.txt

echo "" >> report.txt
echo "Memory Usage:" >> report.txt
free -h >> report.txt

echo "" >> report.txt
echo "Nginx Status:" >> report.txt
systemctl status nginx --no-pager >> report.txt
