## Source image
FROM quay.io/fedora-ostree-desktops/silverblue:40

## MODS
COPY scripts/ /tmp/scripts

COPY files/usr /usr

RUN mkdir -p /var/lib/alternatives && \
    /tmp/scripts/enable-repo.sh && \
    /tmp/scripts/fix-file-permission.sh && \
    /tmp/scripts/install-codecs.sh && \
    /tmp/scripts/install-rpm.sh && \
    /tmp/scripts/remove-rpm.sh && \
    /tmp/scripts/vim-default-editor.sh && \
    ostree container commit
