FROM golang:1.8

RUN go get github.com/derekparker/delve/cmd/dlv
COPY ./docker-entrypoint.sh ./docker-entrypoint.sh
EXPOSE 2345
ENTRYPOINT ["./docker-entrypoint.sh"]