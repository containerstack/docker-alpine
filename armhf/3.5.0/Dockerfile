FROM scratch
LABEL maintainer="Remon Lam [remon@containerstack.io]" architecture="ARMHF"

ENV ALPINE_ARCH armhf
ENV ALPINE_VERSION 3.5.0

ADD ${ALPINE_ARCH}/${ALPINE_VERSION}/alpine-minirootfs-${ALPINE_VERSION}-${ALPINE_ARCH}.tar.gz /
CMD ["/bin/sh"]
