#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Define log directory
LOG_DIR="$SCRIPT_DIR/../logs"
mkdir -p "$LOG_DIR"

# Log file name with timestamp
LOG_FILE="$LOG_DIR/health_report_$(date +%F_%H-%M-%S).log"

{
    echo "===== System Health Monitor Started at $(date) ====="

    bash "$SCRIPT_DIR/monitor_cpu_memory.sh"
    bash "$SCRIPT_DIR/monitor_disk_network.sh"
    bash "$SCRIPT_DIR/monitor_process_users.sh"

    echo "===== Monitoring Completed at $(date) ====="
} >> "$LOG_FILE" 2>&1

echo "System health report saved to $LOG_FILE"#!/bin/bash
# Main script to run all monitors and save to log
LOG_DIR="../logs"
mkdir -p $LOG_DIR
LOG_FILE="$LOG_DIR/health_report_$(date +%F_%H-%M-%S).log"
{
 sh monitor_cpu_memory.sh
 sh monitor_disk_network.sh
 sh monitor_process_users.sh
} >> $LOG_FILE 2>&1
echo "System health report saved to $LOG_FILE"
