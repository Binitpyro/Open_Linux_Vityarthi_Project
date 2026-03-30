#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/dpkg.log python

LOGFILE=$1
KEYWORD=${2:-"error"}    # Default keyword is 'error'
COUNT=0

# Do-while style retry if the file is missing or empty
while [ ! -s "$LOGFILE" ]; do
    echo "Error: File is missing or empty."
    read -p "Please enter a valid log file path: " LOGFILE
done

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "----------------------------------------"
echo "Last 5 occurrences:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
