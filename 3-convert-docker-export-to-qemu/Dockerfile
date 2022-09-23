FROM ubuntu:latest

COPY ./alpine.tar /files/

WORKDIR /files

VOLUME [ "/files/" ]

RUN apt-get update -y \ 
    && apt-get -y --no-install-recommends install \
        libguestfs-tools \
        linux-image-generic \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD virt-make-fs --format=qcow2 --size=+200M alpine.tar alpine-large.qcow2