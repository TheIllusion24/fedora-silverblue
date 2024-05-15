## Source image
FROM quay.io/fedora-ostree-desktops/silverblue:40

## MODS
COPY scripts/enable-repo.sh \
     scripts/fix-file-permission.sh \
     scripts/install-codecs.sh \
     scripts/install-rpm.sh \
     scripts/remove-rpm.sh \
     scripts/vim-default-editor.sh \
        /tmp/

COPY files/usr /usr

RUN mkdir -p /var/lib/alternatives && \
    /tmp/*.sh && \
    ostree container commit
