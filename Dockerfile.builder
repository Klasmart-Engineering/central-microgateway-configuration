FROM golang:1.17-alpine

RUN apk add make gcc musl-dev

WORKDIR /tmp/builder
RUN mkdir plugins