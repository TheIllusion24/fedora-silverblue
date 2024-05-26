#!/usr/bin/env bash

set -ouex pipefail

systemctl disable flatpak-system-update.timer rpm-ostreed-automatic.timer flatpak-user-update.timer
