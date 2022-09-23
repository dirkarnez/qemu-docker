FROM ubuntu:latest

COPY ./files/defconfig /files/
COPY ./files/init.c /files/

WORKDIR /files
VOLUME [ "/output-for-docker" ]
VOLUME [ "/output-for-qemu" ]

RUN apt-get update -y \ 
    && apt-get -y --no-install-recommends install \
        build-essential \
        bison \
        flex \
        libssl-dev \
        libelf-dev \
        bc \ 
        curl \
        ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \ 
    && curl https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.12.10.tar.xz -L -O -J \
    && tar -xf linux-5.12.10.tar.xz

CMD gcc -Wall -static init.c -o /output-for-docker/init \
    && cd linux-5.12.10 \
    && cp /files/defconfig .config \
    && make olddefconfig \
    && make -j8 \
    && cp ./arch/x86_64/boot/bzImage /output-for-qemu
