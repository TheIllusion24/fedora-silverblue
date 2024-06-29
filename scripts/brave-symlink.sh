#!/usr/bin/env bash

mkdir -p /var/opt

mv /var/opt/brave.com /usr/lib/brave.com

cat > /usr/lib/tmpfiles.d/brave-browser.conf <<EOF
L /opt/brave.com -  -  -  -  /usr/lib/brave.com
EOF
