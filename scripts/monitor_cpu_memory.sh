#!/bin/bash
# Script to monitor CPU and Memory usage
echo "===== CPU and Memory Usage ====="
echo "Timestamp: $(date)"
echo "CPU Load (1, 5, 15 min): $(uptime | awk -F'load average:' '{ print $2 }')"
echo "Memory Usage:"
free -h
echo "Top Processes by Memory Usage:"
ps aux --sort=-%mem | head -n 6
echo "Printed"
