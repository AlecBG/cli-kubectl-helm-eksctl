FROM alpine:latest

COPY install.sh install.sh
RUN ash install.sh
