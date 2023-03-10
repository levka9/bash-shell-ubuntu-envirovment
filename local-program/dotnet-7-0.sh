#!/bin/bash
source ../libraries/string.sh

# for ubuntu 22.04
// todo: implement this function
is_dotnet_exist(){
    local dotnet_version="$(dotnet --version)";
    is_contain_string "$dotnet_version" "7.0";
    local is_dotnet_exist=$?;

    echo "is_dotnet_exist:" $is_dotnet_exist;
}

wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

echo "starting install dotnet-sdk-7.0"
sudo apt-get update > /dev/null && \
    sudo apt-get install -y dotnet-sdk-7.0 > /dev/null

echo "starting install aspnetcore-runtime-7.0"
sudo apt-get update > /dev/null && \
    sudo apt-get install -y aspnetcore-runtime-7.0 > /dev/null
