ARG IMAGE_VERSION

FROM golang:$IMAGE_VERSION

RUN apk add make gcc musl-dev git

WORKDIR /tmp/builder
RUN mkdir plugins