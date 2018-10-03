#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "Måste köras som root"
  exit 1
fi

cp restore /usr/local/bin/restore
cp backup /usr/local/bin/backup
chmod +x /usr/local/bin/restore
chmod +x /usr/local/bin/backup
echo "session-cleanup-script = /usr/local/bin/restore" >> /etc/lightdm/lightdm.conf

