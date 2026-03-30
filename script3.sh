#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
PYTHON_DIR="/usr/lib/python3"

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------"

# Checking the Python library directory permissions
if [ -d "$PYTHON_DIR" ]; then
    PYTHON_PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1, $3, $4}')
    echo "Python Dir ($PYTHON_DIR) => Permissions: $PYTHON_PERMS"
else
    echo "Python Dir ($PYTHON_DIR) does not exist."
fi
