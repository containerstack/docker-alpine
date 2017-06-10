# docker-alpine

A super small Docker image based on [Alpine Linux][alpine]. The image is only 5 MB and has access to a package repository that is much more complete than other BusyBox based images.

## Why?

Docker images today are big. Usually much larger than they need to be. There are a lot of ways to make them smaller, but the Docker populace still jumps to the `ubuntu` base image for most projects. The size savings over `ubuntu` and other bases are huge:

```
REPOSITORY          TAG           IMAGE ID          VIRTUAL SIZE
gliderlabs/alpine   latest        9cfff538e583      4.803 MB
debian              latest        19134a8202e7      123.1 MB
ubuntu              latest        104bec311bcd      129 MB
centos              latest        67591570dd29      191.8 MB
```

There are images such as `progrium/busybox` which get us very close to a minimal container and package system. But these particular BusyBox builds piggyback on the OpenWRT package index which is often lacking and not tailored towards generic everyday applications. Alpine Linux has a much more complete and up to date [package index][alpine-packages]:

## Usage

Stop doing this:

```dockerfile
FROM ubuntu-debootstrap:14.04
RUN apt-get update -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -qy mysql-client \
  && apt-get clean \
  && rm -rf /var/lib/apt
ENTRYPOINT ["mysql"]
```
This took 19 seconds to build and yields a 164 MB image. Eww. Start doing this:

```dockerfile
FROM containerstack/alpine:3.5.0
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```

Only 3 seconds to build and results in a 36 MB image! Hooray!

## Other helpfull stuf

[alpine]: http://alpinelinux.org/
[alpine-packages]: http://pkgs.alpinelinux.org/
[alpine-about]: https://www.alpinelinux.org/about/
[issues]: https://github.com/containerstack/docker-alpine/issues
[hub]: https://hub.docker.com/r/containerstack/alpine/
