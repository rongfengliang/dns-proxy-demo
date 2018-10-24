FROM alpine:latest
RUN apk  add openssl  wget
WORKDIR /app
COPY ./linux-x86_64/* /app/
CMD [ "./dnscrypt-proxy" ]