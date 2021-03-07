FROM alpine:3.13.2

RUN apk --no-cache add bash ca-certificates curl git netcat-openbsd openssh

COPY ./certs/* /usr/local/share/ca-certificates/

RUN update-ca-certificates
