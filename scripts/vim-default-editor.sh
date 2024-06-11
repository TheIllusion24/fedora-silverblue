#!/usr/bin/env bash

set -ouex pipefail

rpm-ostree override remove \
    nano-default-editor --install \
    vim-default-editor

