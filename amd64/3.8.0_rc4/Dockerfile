FROM scratch
LABEL maintainer="Remon Lam [remon@containerstack.io]" architecture="amd64"

ENV ALPINE_ARCH amd64
ENV ALPINE_VERSION 3.8.0

ADD alpine-minirootfs-${ALPINE_VERSION}_rc4-${ALPINE_ARCH}.tar.gz /
CMD ["/bin/sh"]
