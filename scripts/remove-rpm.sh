#!/usr/bin/env bash

set -ouex pipefail

rpm-ostree override remove \
    firefox \
    firefox-langpacks
