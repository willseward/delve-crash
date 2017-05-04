FROM golang:1.8

RUN go get github.com/derekparker/delve/cmd/dlv
COPY ./docker-entrypoint.sh ./docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]