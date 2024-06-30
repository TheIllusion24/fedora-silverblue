#!/usr/bin/env bash

set -ouex pipefail

/tmp/scripts/install-brave-browser.sh

rpm-ostree install \
    chromium \
    firewall-config \
    gnome-themes-extra \
    lm_sensors \
    setools \
    setroubleshoot \
    usbguard \
    usbguard-dbus \
    wl-clipboard
