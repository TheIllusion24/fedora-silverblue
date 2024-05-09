## SOURCE IMAGE
FROM quay.io/fedora-ostree-desktops/silverblue:40

## MODS
COPY script.sh /tmp/script.sh
COPY files/usr /usr

RUN mkdir -p /var/lib/alternatives && \
    /tmp/script.sh && \
    ostree container commit
