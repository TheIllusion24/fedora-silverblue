ARG SOURCE_IMAGE="silverblue"
ARG SOURCE_SUFFIX="-main"
ARG SOURCE_TAG="40"
ARG SOURCE_ORG="ublue-os"
ARG BASE_IMAGE="ghcr.io/${SOURCE_ORG}/${SOURCE_IMAGE}${SOURCE_SUFFIX}"

FROM ${BASE_IMAGE}:${SOURCE_TAG}

COPY scripts/ /tmp/scripts
COPY files/usr /usr

RUN mkdir -p /var/lib/alternatives && \
    /tmp/scripts/fix-file-permission.sh && \
    /tmp/scripts/install-rpm.sh && \
    /tmp/scripts/remove-rpm.sh && \
    /tmp/scripts/vim-default-editor.sh && \
    ostree container commit
