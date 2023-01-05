#!/bin/bash
source ../libraries/string.sh

is_google_chrome_exists(){
    local google_chrome_version="$(google-chrome --version)";
    is_contain_string "$google_chrome_version" "Google Chrome";
    local is_google_chrome_exists=$?;

    echo "is_google_chrome_exists:" $is_google_chrome_exists;
}

install_google_chrome(){
    local is_exists=is_google_chrome_exists;

    if [[ "$is_exists" == "1" ]]; then
        sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo dpkg -i google-chrome-stable_current_amd64.deb
        sudo rm google-chrome-stable_current_amd64.deb
    else
        echo "google chrome already installed";
    fi
}

install_google_chrome
