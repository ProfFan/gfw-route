#!/bin/bash
# Copyright (C) VPNCloud 2014

export PATH="/bin:/sbin:/usr/sbin:/usr/bin"

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "VPN Speed Up From VPNCloud."
echo "[Warning] Please disconnect VPN before install!"
echo ""
read -n1 -r -p "Then press any key to continue..." nothing

cp $SCRIPTDIR/data/ip-pre-up /etc/ppp/ip-pre-up
chmod +x /etc/ppp/ip-pre-up

cp $SCRIPTDIR/data/ip-down /etc/ppp/ip-down.d/ip-down
chmod +x /etc/ppp/ip-down.d/ip-down

echo ""
echo "Install successfully."
echo "Connect VPN to try the speed up!"
