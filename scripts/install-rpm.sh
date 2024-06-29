#!/usr/bin/env bash

set -ouex pipefail

/tmp/scripts/rpm-repos.sh

rpm-ostree install \
    brave-browser \
    firewall-config \
    gnome-themes-extra \
    lm_sensors \
    setools \
    setroubleshoot \
    usbguard \
    usbguard-dbus \
    wl-clipboard
