## Source image
FROM quay.io/fedora-ostree-desktops/silverblue:40

## MODS
COPY scripts/ /tmp/scripts
COPY files/usr /usr
COPY --from=ghcr.io/ublue-os/ublue-update:39 /rpms/ublue-update.noarch.rpm /tmp/rpms/

RUN mkdir -p /var/lib/alternatives && \
    /tmp/scripts/enable-repo.sh && \
    /tmp/scripts/fix-file-permission.sh && \
    /tmp/scripts/install-codecs.sh && \
    /tmp/scripts/install-rpm.sh && \
    /tmp/scripts/remove-rpm.sh && \
    /tmp/scripts/ublue-update.sh && \
    /tmp/scripts/vim-default-editor.sh && \
    ostree container commit
