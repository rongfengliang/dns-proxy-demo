FROM alpine:latest
RUN apk  add openssl git wget
WORKDIR /app
COPY ./linux-x86_64/* /app/
CMD [ "./dnscrypt-proxy" ]