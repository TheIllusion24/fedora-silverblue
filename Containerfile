## Source image
FROM quay.io/fedora-ostree-desktops/silverblue:40

## MODS
COPY scripts/ /tmp/

COPY files/usr /usr

RUN mkdir -p /var/lib/alternatives && \
    /tmp/*.sh && \
    ostree container commit
