#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE=${1:-"python3"}   # Default to python3 if no argument is given

# Check if package is installed
if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E '^Version|^Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# A case statement that prints a one-line philosophy note
case $PACKAGE in
    apache2) echo "Apache: the web server that built the open internet" ;;
    mysql)   echo "MySQL: open source at the heart of millions of apps" ;;
    python3) echo "Python: A language shaped entirely by community" ;;
    vlc)     echo "VLC: plays anything — built by students in Paris" ;;
    *)       echo "$PACKAGE: A valuable part of the open source ecosystem" ;;
esac
