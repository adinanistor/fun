#!/bin/bash
# Return to original settings
# Adina Nistor - 26/05/2017

mv /etc/hosts_original /etc/hosts
export DISPLAY=':0.0'
xmessage "$WEB has been unblocked."
