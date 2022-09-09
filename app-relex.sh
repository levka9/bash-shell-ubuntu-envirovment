#!/bin/bash
source libraries/string.sh
source libraries/package.sh

ret_value=""

clear
echo "start …"

# custom list of the packages to install 
ADD_APT_REPOSITORY=()
APT_GET_PACKAGES=("snapd" "snapd-xdg-open" "curl" "htop" "torbrowser-launcher" "copyq" "ubuntu-cleaner" "qbittorrent" "gufw" "clamav clamav-daemon")
SNAP_PACKAGES=("chromium" "vlc" "whatsapp-app" "telegram-desktop" "skype" "youtube-music-desktop-app" "4ktube" "notepad-plus-plus")

echo "starting to update packages ..."
for pkg in "${ADD_APT_REPOSITORY[@]}";
do
    echo "-- install '$pkg'"
    sudo add-apt-repository -y "$pkg" &> /dev/null
    sudo apt-get -y update &> /dev/null
done
echo "finished the packages updating!"

echo "starting to install apt-get applications …"
for pkg in "${APT_GET_PACKAGES[@]}";
do
    echo "-- install '$pkg'"
    is_package_exists="$(is_package_exists "$pkg")"
        
    if [[ "$is_package_exists" == "0" ]]; then
        echo "Package $pkg already installed."
    else
        sudo apt-get install -y $pkg
    fi
done
echo "finished to install apt-get applications!"

echo "starting to install snap applications …"
for pkg in "${SNAP_PACKAGES[@]}";
do
    echo "-- install '$pkg'"
    is_package_exists "$pkg"
    is_package_exists_ret="$ret_value"
    
    #echo "is_package_exists_ret="$is_package_exists_ret #debugger 

    if [[ "$is_package_exists_ret" == "0" ]]; then
        echo "Package $pkg already installed."
    else
        echo "start install snap"
        sudo snap install $pkg
    fi
done
echo "finished to install snap applications!"

echo "finished!"

exit 0