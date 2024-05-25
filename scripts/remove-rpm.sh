#!/usr/bin/env bash

set -ouex pipefail

# Remove RPMs from base image
rpm-ostree override remove \
