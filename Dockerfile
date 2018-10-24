# build stage
FROM golang:1.10-alpine AS build-env
RUN apk  add build-base git bzr mercurial gcc cmake

ENV D=/go/src/github.com/m13253/dns-over-https

RUN cd /go/src/github.com/m13253 && git clone https://github.com/m13253/dns-over-https.git

RUN cd $D &&  make
