#!/usr/bin/env bash

set -ouex pipefail

# Replace Nano default editor with VIM default editor
rpm-ostree override remove \
    nano-default-editor --install \
    vim-default-editor

