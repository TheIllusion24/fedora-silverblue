#!/usr/bin/env bash

set -ouex pipefail

# Remove conflict package and install codecs
rpm-ostree override remove \
    ffmpeg-free \
    libavcodec-free \
    libavdevice-free \
    libavfilter-free \
    libavformat-free \
    libavutil-free \
    libpostproc-free \
    libswresample-free \
    libswscale-free \
    mesa-va-drivers \
    --install ffmpeg \
    gstreamer1-plugin-libav \
    gstreamer1-plugins-bad-free-extras \
    gstreamer1-plugin-openh264 \
    gstreamer1-plugins-bad-freeworld \
    gstreamer1-plugins-ugly \
    gstreamer1-vaapi \
    intel-media-driver \
    pipewire-codec-aptx
