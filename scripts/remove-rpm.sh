#!/usr/bin/env bash

set -ouex pipefail

# Remove RPMs from base image
rpm-ostree override remove \
    default-fonts-cjk-sans \
    firefox \
    firefox-langpacks \
    google-noto-sans-cjk-vf-fonts 
