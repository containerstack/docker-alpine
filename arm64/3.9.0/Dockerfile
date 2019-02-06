FROM scratch
LABEL maintainer="Remon Lam [remon@containerstack.io]" architecture="ARM64"

ENV ALPINE_ARCH arm64
ENV ALPINE_VERSION 3.9.0

ADD alpine-minirootfs-${ALPINE_VERSION}-${ALPINE_ARCH}.tar.gz /
CMD ["/bin/sh"]
