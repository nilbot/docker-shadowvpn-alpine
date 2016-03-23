# Start from a Ubuntu image with the latest version
FROM nilbot/alpine:dev

MAINTAINER Nilbot <admin@nilbot.net>

# Get source
RUN git clone https://github.com/nilbot/shadowvpn.git && \
    cd shadowvpn && \
    git submodule update --init --recursive && \
    ./autogen.sh && \
    ./configure --enable-static && \
    make

ENTRYPOINT ["/shadowvpn/src/shadowvpn"]
