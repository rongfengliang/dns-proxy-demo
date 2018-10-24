FROM alpine:latest
RUN apk  add openssl
WORKDIR /app
COPY ./linux-x86_64/* /app/
CMD [ "./dnscrypt-proxy" ]