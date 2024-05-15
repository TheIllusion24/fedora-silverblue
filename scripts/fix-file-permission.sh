#!/usr/bin/env bash

set -ouex pipefail

# Fix file permission
chmod 440 /usr/etc/sudoers.d/*
