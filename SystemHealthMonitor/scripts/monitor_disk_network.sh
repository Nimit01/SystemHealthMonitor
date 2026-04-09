#!/bin/bash
# Script to monitor Disk and Network usage
echo "===== Disk and Network Usage ====="
echo "Timestamp: $(date)"
echo "Disk Usage:"
df -h
echo ""
echo "Network Statistics:"
ip -s link
echo ""