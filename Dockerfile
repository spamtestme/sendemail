FROM ubuntu:18.04

RUN apt-get update                  \
    && apt-get -y install sendemail \
        libio-socket-ssl-perl       \
        libnet-ssleay-perl          \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/sendemail"]