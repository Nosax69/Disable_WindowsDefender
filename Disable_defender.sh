#!/bin/bash

# Check if running as administrator
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Stop the Windows Defender service
systemctl stop "windows defender"

# Disable the Windows Defender service
systemctl disable "windows defender"

# Remove the Windows Defender service
sc delete "windows defender"

echo "Windows Defender has been disabled permanently."
