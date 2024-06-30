ARG SOURCE_IMAGE="silverblue"
ARG SOURCE_SUFFIX="-main"
ARG SOURCE_TAG="40"
ARG SOURCE_ORG="ublue-os"
ARG SOURCE_REGISTRY="ghcr.io"

FROM ${SOURCE_REGISTRY}/${SOURCE_ORG}/${SOURCE_IMAGE}${SOURCE_SUFFIX}:${SOURCE_TAG}

COPY scripts/ /tmp/scripts
COPY files/usr /usr
COPY files/usr/bin/brave-browse-stable /tmp

RUN mkdir -p /var/lib/alternatives && \
    /tmp/scripts/fix-file-permission.sh && \
    /tmp/scripts/install-rpm.sh && \
    /tmp/scripts/remove-rpm.sh && \
    /tmp/scripts/set-chromium-flags.sh && \
    /tmp/scripts/vim-default-editor.sh && \
    cp /tmp/brave-browser-stable /usr/bin && \
    ostree container commit
