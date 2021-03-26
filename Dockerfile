FROM alpine:3.13.3

RUN apk --no-cache add bash ca-certificates curl git jq netcat-openbsd openssh

COPY ./certs/* /usr/local/share/ca-certificates/

RUN update-ca-certificates
