# bash-shell
Auto update Ubuntu and install all my needed programs after first installation.

Programs that it script install you may change in "app.sh" file:

ADD_APT_REPOSITORY=("ppa:gerardpuig/ppa" "ppa:inkscape.dev/stable" "ppa:hluk/copyq")

APT_GET_PACKAGES=("snapd" "snapd-xdg-open" "htop" "torbrowser-launcher" "git-all" "copyq" "filezilla" "ubuntu-cleaner" "inkscape" "peek" "notepadqq" "qbittorrent")

SNAP_PACKAGES=("chromium" "--classic code" "vlc" "whatsapp-app" "telegram-desktop" "skype" "youtube-music-desktop-app" "wps-office" "4ktube")

Run this script in your terminal with this command:
bash app.sh

Tested on Ubuntu: v22.04