#!/bin/sh

SHELL_FOLDER=$(cd "$(dirname "$0")" && pwd)
cd ${SHELL_FOLDER}

install -m 755 ${SHELL_FOLDER}/upm /usr/libexec/cups/backend
install -m 755 ${SHELL_FOLDER}/gpcl6 /usr/local/bin

echo "Sandboxing Relaxed" >> /etc/cups/cups-files.conf

launchctl unload /System/Library/LaunchDaemons/org.cups.cupsd.plist
launchctl load /System/Library/LaunchDaemons/org.cups.cupsd.plist
