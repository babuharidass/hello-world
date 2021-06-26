FROM golang:1.12.0-alpine3.9

RUN mkdir /build
ADD src /build
WORKDIR /build

RUN go build -o main .

EXPOSE 8080

ENTRYPOINT ["/build/main"]