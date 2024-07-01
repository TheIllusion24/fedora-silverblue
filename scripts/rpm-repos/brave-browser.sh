#!/usr/bin/env bash

set -ouex pipefail

# On libostree systems, /opt is a symlink to /var/opt,
# which actually only exists on the live system. /var is
# a separate mutable, stateful FS that's overlaid onto
# the ostree rootfs. Therefore we need to install it into
# /usr/lib/google instead, and dynamically create a
# symbolic link /opt/google => /usr/lib/google upon
# boot.
mkdir -p /var/opt # -p just in case it exists
mkdir -p /var/lib/alternatives
cat << EOF > /etc/yum.repos.d/brave-browser.repo
[brave-browser]
name=Brave Browser
enabled=1
autorefresh=1
baseurl=https://brave-browser-rpm-release.s3.brave.com/x86_64
EOF

rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

rpm-ostree install brave-browser

rm /etc/yum.repos.d/brave-browser.repo -f

rm /etc/pki/rpm-gpg/RPM-GPG-KEY-brave*

mv /var/opt/brave.com /usr/lib/brave.com

sed -i 's/brave-browser-stable/brave/' /usr/share/applications/brave-browser.desktop

# We do this via tmpfiles.d so that it is created by the live system.
cat >/usr/lib/tmpfiles.d/brave-browser.conf <<EOF
L  /opt/brave.com -  -  -  -  /usr/lib/brave.com
EOF
