#!/usr/bin/env bash

set -ouex pipefail

# Install RPMs
rpm-ostree install \
    firewall-config \
    lm_sensors \
    setools \
    setroubleshoot \
    usbguard \
    usbguard-dbus \
    wl-clipboard
