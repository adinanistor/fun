#!/bin/bash
# Drop connections to Youtube, Facebook or anything funny.
# Adina Nistor - 26/05/2017

WEB=$@

sudo cp /etc/hosts /etc/hosts_original

for item in $WEB
do
	echo "127.0.0.1 $item" | sudo tee --append /etc/hosts > /dev/null
done

export DISPLAY=':0.0'
xmessage "$WEB is blocked."
