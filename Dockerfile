FROM alpine:3.11.6

RUN apk --no-cache add bash ca-certificates curl netcat-openbsd

COPY ./certs/* /usr/local/share/ca-certificates/

RUN update-ca-certificates
