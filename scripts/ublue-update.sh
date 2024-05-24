#!/usr/bin/env bash

set -ouex pipefail

pip install --prefix=/usr topgrade

rpm-ostree install /tmp/rpms/ublue-update.noarch.rpm

systemctl enable ublue-update.service
