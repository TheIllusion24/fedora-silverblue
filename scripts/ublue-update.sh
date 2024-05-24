#!/usr/bin/env bash

set -ouex pipefail

rpm-ostree install /tmp/rpms/ublue-update.noarch.rpm

systemctl enable ublue-update.service
