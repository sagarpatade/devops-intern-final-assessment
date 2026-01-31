#!/bin/bash
# sysinfo.sh - Prints basic system information

echo "=== DevOps Intern System Info ==="
echo "Current User: $(whoami)"
echo "Current Date: $(date)"
echo "-----------------------------"
echo "Disk Usage:"
df -h
echo "============================="