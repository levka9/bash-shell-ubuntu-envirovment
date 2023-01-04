# bash-shell
Auto update Ubuntu and install all my needed programs after first installation.

Programs that it script install you may change in "app.sh" file:

ADD_APT_REPOSITORY=("ppa:gerardpuig/ppa" "ppa:inkscape.dev/stable" "ppa:hluk/copyq" "ppa:serge-rider/dbeaver-ce")

APT_GET_PACKAGES=("snapd" "snapd-xdg-open" "htop" "torbrowser-launcher" "git-all" "copyq" "filezilla" "ubuntu-cleaner" "inkscape" "peek" "notepadqq" "qbittorrent" "dbeaver-ce" "timeshift")

SNAP_PACKAGES=("chromium" "--classic code" "vlc" "whatsapp-app" "telegram-desktop" "skype" "youtube-music-desktop-app" "wps-office" "4ktube")

Steps:
1. Run this script in your terminal this command depend on type of invirovment that do you want create for you:
bash app.sh
or 
bash app-relex.sh
or
bash app-programming.sh

2. Start all needed programs


Program details:
DBeaver-ce - Free multi-platform database tool for developers, database administrators, analysts and all people who need to work with databases. Supports all popular databases: MySQL, PostgreSQL, SQLite, Oracle, DB2, SQL Server, Sybase, MS Access, Teradata, Firebird, Apache Hive, Phoenix, Presto, etc. https://dbeaver.io/download/

ClamAV - is an open source (GPLv2) anti-virus toolkit, designed especially for e-mail scanning on mail gateways.

Timeshift - backup and restore the system

Gparted - is a partition editor for graphically managing your disk partitions.


Tested on Ubuntu: v22.04