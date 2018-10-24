# build stage
FROM golang:1.10-alpine AS build-env
RUN apk  add build-base git bzr mercurial gcc cmake
RUN mkdir -p /go/src/github.com/m13253
ENV D=/go/src/github.com/m13253/dns-over-https

RUN cd /go/src/github.com/m13253 && git clone https://github.com/m13253/dns-over-https.git

RUN cd $D &&  make

FROM alpine:latest
ENV note=doh-server,doh-client
LABEL author="dalongrong"
LABEL email="1141591465@qq.com"
WORKDIR /app
COPY --from=build-env /go/src/github.com/m13253/dns-over-https/doh-server/doh-server /app/doh-server
COPY --from=build-env /go/src/github.com/m13253/dns-over-https/doh-server/doh-server.conf /app/doh-server.conf
COPY --from=build-env /go/src/github.com/m13253/dns-over-https/doh-client/doh-client /app/doh-client
COPY --from=build-env /go/src/github.com/m13253/dns-over-https/doh-client/doh-client.conf /app/doh-client.conf

