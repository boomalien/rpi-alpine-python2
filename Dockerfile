FROM hypriot/rpi-alpine

LABEL Description="This Docker Image is for the Raspberry Pi it uses the hypriot/rpi-alpine as base image"

RUN apk update && \
    apk upgrade && \
    apk add build-base && \
    apk add python && \
    apk add python-dev && \
    apk add git && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache && \
    rm -rf /var/cache/apk/*
