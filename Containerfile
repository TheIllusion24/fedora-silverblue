## Source image
FROM ghcr.io/ublue-os/silverblue-main:40

## MODS
COPY scripts/ /tmp/scripts
COPY files/usr /usr

RUN mkdir -p /var/lib/alternatives && \
    /tmp/scripts/fix-file-permission.sh && \
    /tmp/scripts/install-rpm.sh && \
    /tmp/scripts/remove-rpm.sh && \
    /tmp/scripts/vim-default-editor.sh && \
    ostree container commit
