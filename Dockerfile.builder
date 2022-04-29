ARG IMAGE_VERSION

FROM golang:$IMAGE_VERSION

RUN apk add make gcc musl-dev

WORKDIR /tmp/builder
RUN mkdir plugins