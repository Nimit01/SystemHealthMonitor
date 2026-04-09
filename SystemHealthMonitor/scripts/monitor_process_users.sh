monitor_process_users.sh
#!/bin/bash
# Script to monitor processes and logged-in users
echo "===== Process and User Info ====="
echo "Timestamp: $(date)"
echo "Currently Logged In Users:"
who
echo ""
echo "Running Processes Count:"
ps -e --no-headers | wc -l
echo ""