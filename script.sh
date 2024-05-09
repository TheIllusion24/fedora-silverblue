#!/usr/bin/env bash

set -ouex pipefail

# Install RPMFusion
rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
rpm-ostree install rpmfusion-free-release rpmfusion-nonfree-release --uninstall rpmfusion-free-release rpmfusion-nonfree-release

# Remove Confict Codecs Packages
rpm-ostree override remove libavcodec-free libavfilter-free libavformat-free libavutil-free libpostproc-free libswresample-free libswscale-free mesa-va-drivers

# Install Codecs
rpm-ostree install ffmpeg gstreamer1-plugin-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugin-openh264 gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly gstreamer1-vaapi intel-media-driver pipewire-codec-aptx

# Install RPMs
rpm-ostree install firewall-config gnome-tweaks google-noto-sans-balinese-fonts google-noto-sans-cjk-fonts google-noto-sans-javanese-fonts google-noto-sans-sundanese-fonts gvfs-nfs htop igt-gpu-tools lm_sensors openssl setools setroubleshoot usbguard usbguard-dbus wl-clipboard

# Replace Nano default editor with VIM default editor
rpm-ostree override remove nano-default-editor --install vim-default-editor

# Fix file permission
chmod 440 /usr/etc/sudoers.d/*

# Remove RPMs from base image
rpm-ostree override remove default-fonts-cjk-sans firefox firefox-langpacks google-noto-sans-cjk-vf-fonts 
