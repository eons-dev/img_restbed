#FROM alpine
FROM ubuntu:latest

COPY /include/restbed /usr/local/include/restbed
COPY /include/corvusoft /usr/local/include/corvusoft
COPY /library/librestbed.a /usr/local/lib/
COPY /library/librestbed.so.4.7 /usr/local/lib/
COPY /library/librestbed.so.4 /usr/local/lib/
COPY /library/librestbed.so /usr/local/lib/

#RUN apk update
#RUN apk add --no-cache libstdc++
#RUN apk add --no-cache gcc
#RUN apk add --no-cache libc6-compat && ln -s /lib/libc.musl-x86_64.so.1 /lib/ld-linux-x86-64.so.2

RUN apt update
RUN apt install -y gcc
RUN apt install -y openssl
RUN rm -rf /var/lib/apt/lists/*
