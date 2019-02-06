FROM scratch
LABEL maintainer="Remon Lam [remon@containerstack.io]" architecture="amd64"

ENV ALPINE_ARCH amd64
ENV ALPINE_VERSION 3.9.0

ADD alpine-minirootfs-${ALPINE_VERSION}-${ALPINE_ARCH}.tar.gz /
CMD ["/bin/sh"]
