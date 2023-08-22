#!/bin/bash

EMAIL="$USER@cmi.ac.in"
KEY_PATH="$HOME/.ssh/cmi"
AUTHORIZED_KEYS_FILE="$HOME/.ssh/authorized_keys"

ssh-keygen -t ed25519 -f $KEY_PATH -N '' -C $EMAIL -q
mv $KEY_PATH "$KEY_PATH.key"

cat "$KEY_PATH.pub" >>$AUTHORIZED_KEYS_FILE
chmod 600 $AUTHORIZED_KEYS_FILE

echo "" | mail -s "SSH Key" -A "$KEY_PATH.key" $EMAIL
