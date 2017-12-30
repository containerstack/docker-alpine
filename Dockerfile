FROM scratch
LABEL maintainer="Remon Lam [remon@containerstack.io]" architecture="AMD64"

ENV ALPINE_ARCH x86_64
ENV ALPINE_VERSION 3.7.0

ADD alpine-minirootfs-${ALPINE_VERSION}-${ALPINE_ARCH}.tar.gz /
CMD ["/bin/sh"]
