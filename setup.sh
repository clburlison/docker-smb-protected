#!/bin/bash
export USERNAME="admin"
export PASSWORD="letmein"
adduser --system --shell /bin/false --group --disabled-password $USERNAME
echo -ne "$PASSWORD\n$PASSWORD\n" | smbpasswd -a -s $USERNAME
chown -R $USERNAME:$USERNAME /imagr/
chmod -R ugo+rwx /imagr/
chown -R $USERNAME:$USERNAME /nbi/
chmod -R ugo+rwx /nbi/