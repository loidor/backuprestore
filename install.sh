#!/bin/bash

cp restore /usr/local/bin/restore
cp backup /usr/local/bin/backup
chmod +x /usr/local/bin/restore
chmod +x /usr/local/bin/backup
echo "session-cleanup-script = /usr/local/bin/restore" >> /etc/lightdm/lightdm.conf
