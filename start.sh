#!/bin/bash
clear
echo "start..."

# activate ufw firewall
ufwStatus=$(sudo ufw status)
echo "ufw: $ufwStatus"

if [[ "$ufwStatus" == *"Status: inactive"* ]]; then
    echo "activate ufw ..." 
    sudo ufw enable
fi

# update antivirus database and enable it
echo "updating an antivirus database ..."
sudo systemctl stop clamav-freshclam > /dev/null
sudo freshclam > /dev/null
sudo systemctl enable clamav-freshclam --now > /dev/null 2>&1
echo "antivirus update finished!"
