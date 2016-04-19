# Start from a Ubuntu image with the latest version
FROM alpine:latest

MAINTAINER Nilbot <admin@nilbot.net>
RUN apk update && apk add iptables
COPY shadowvpn-alpine-musl-x64 /shadowvpn
ENTRYPOINT ["/shadowvpn"]
