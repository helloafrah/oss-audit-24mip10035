#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Afrah Khan

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed ✅"
    
    # Show details
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed ❌"
fi

echo ""

# Case statement (philosophy message)
case $PACKAGE in
    git) echo "Git: a tool built to empower developers with freedom and control over code." ;;
    firefox) echo "Firefox: a browser that stands for an open and private web." ;;
    vlc) echo "VLC: a media player built by community, for everyone." ;;
    *) echo "Open source software empowers users with freedom." ;;
esac
