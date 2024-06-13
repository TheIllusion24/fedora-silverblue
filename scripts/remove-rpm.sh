#!/usr/bin/env bash

set -ouex pipefail

rpm-ostree override remove \
    adw-gtk3-theme \
    firefox \
    firefox-langpacks
