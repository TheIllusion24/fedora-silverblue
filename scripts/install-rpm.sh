#!/usr/bin/env bash

set -ouex pipefail

rpm-ostree install \
    firewall-config \
    gnome-themes-extra \
    lm_sensors \
    setools \
    setroubleshoot \
    rsms-inter-fonts \
    rsms-inter-vf-fonts \
    usbguard \
    usbguard-dbus \
    wl-clipboard
