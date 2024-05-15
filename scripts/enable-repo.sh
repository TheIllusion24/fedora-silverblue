#!/usr/bin/env bash

set -ouex pipefail

# Install RPMFusion
rpm-ostree install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

rpm-ostree install \
    rpmfusion-free-release \
    rpmfusion-nonfree-release \ 
    --uninstall \
    rpmfusion-free-release \
    rpmfusion-nonfree-release