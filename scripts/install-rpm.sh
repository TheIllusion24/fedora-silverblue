#!/usr/bin/env bash

set -ouex pipefail

/tmp/scripts/copr-repos.sh

rpm-ostree install \
    firewall-config \
    gnome-themes-extra \
    lm_sensors \
    scrcpy \
    setools \
    setroubleshoot \
    usbguard \
    usbguard-dbus \
    wl-clipboard
