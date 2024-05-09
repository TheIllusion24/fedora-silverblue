#!/usr/bin/env bash

command -v podman >/dev/null || { echo "Podman is not installed, install it before using this script."; exit; }

sudo podman run --rm --privileged --volume .:/build-container-installer/build ghcr.io/jasonn3/build-container-installer:latest VERSION=40 IMAGE_REPO=ghcr.io/theillusion24 IMAGE_NAME=fedora-silverblue IMAGE_TAG=latest FLATPAK_REMOTE_REFS_DIR=build/flatpak_refs VARIANT=Silverblue ISO_NAME=build/fedora-silverblue.iso
