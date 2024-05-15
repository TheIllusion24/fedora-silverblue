## Source image
FROM quay.io/fedora-ostree-desktops/silverblue:40

## MODS
COPY scripts/ /tmp/

COPY files/usr /usr

RUN mkdir -p /var/lib/alternatives && \
    /tmp/enable-repo.sh && \
    /tmp/fix-file-permission.sh && \
    /tmp/install-codecs.sh && \
    /tmp/install-rpm.sh && \
    /tmp/remove-rpm.sh && \
    /tmp/vim-default-editor && \
    ostree container commit
