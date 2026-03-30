
#!/bin/bash
# Script 1: System Identity Report
# Author: Binit Varghese | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Binit Varghese"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release 2>/dev/null | grep '^PRETTY_NAME=' | cut -d= -f2- | tr -d '"')
CURRENT_DATE=$(date '+%d %B %Y')

# --- Display ---
echo "========================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Uptime       : $UPTIME"
echo "Distribution : $DISTRO"
echo "Date         : $CURRENT_DATE"
echo "OS License   : The kernel runs under GPL v2."
echo "Chosen FOSS  : $SOFTWARE_CHOICE"
