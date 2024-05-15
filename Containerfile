## Source image
FROM quay.io/fedora-ostree-desktops/silverblue:40

## MODS
COPY scripts.sh /tmp
COPY scripts/ /tmp/scripts
COPY files/usr /usr

RUN mkdir -p /var/lib/alternatives && \
    /tmp/scripts.sh && \
    ostree container commit
