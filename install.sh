#!/bin/sh

SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
cd ${SHELL_FOLDER}

install -m 755 upm /usr/libexec/cups/backend
install -m 755 gpcl6 /usr/local/bin

echo "Sandboxing Relaxed" >> /etc/cups/cups-files.conf
echo "SetEnv PATH /usr/libexec/cups/filter:/usr/bin:/usr/sbin:/bin:/usr/bin:/usr/local/bin" >> /etc/cups/cups-files.conf

sudo launchctl unload /System/Library/LaunchDaemons/org.cups.cupsd.plist
sudo launchctl load /System/Library/LaunchDaemons/org.cups.cupsd.plist
