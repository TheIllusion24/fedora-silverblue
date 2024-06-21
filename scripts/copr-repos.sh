#!/usr/bin/env bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

curl -Lo /etc/yum.repos.d/zeno-scrcpy-fedora-"${RELEASE}".repo https://copr.fedorainfracloud.org/coprs/zeno/scrcpy/repo/fedora-"${RELEASE}"/zeno-scrcpy-fedora-"${RELEASE}".repo
