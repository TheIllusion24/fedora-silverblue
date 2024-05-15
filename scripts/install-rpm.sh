#!/usr/bin/env bash

set -ouex pipefail

# Install RPMs
rpm-ostree install \ 
    firewall-config \
    gnome-epub-thumbnailer \
    gnome-themes-extra \
    gnome-tweaks \
    google-noto-sans-balinese-fonts \
    google-noto-sans-cjk-fonts \
    google-noto-sans-javanese-fonts \
    google-noto-sans-sundanese-fonts \
    gvfs-nfs \
    htop \
    igt-gpu-tools \
    lm_sensors \
    openssl \
    setools \
    setroubleshoot \
    smartmontools \
    usbguard \
    usbguard-dbus \
    wl-clipboard
