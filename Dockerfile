FROM ubuntu:14.04
MAINTAINER yuu

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bzip2
ENV DEBIAN_FRONTEND dialog

RUN ln -s /usr/bin/python3 /usr/bin/python

ONBUILD ADD toolchain.sh /
ONBUILD RUN chmod +x toolchain.sh && /toolchain.sh -y && rm /toolchain.sh

RUN ln -fs /bin/bash /bin/sh
