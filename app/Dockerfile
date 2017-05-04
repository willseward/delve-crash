FROM golang:1.8 AS builder
COPY ./ /go/src/myapp
WORKDIR /go/src/myapp
RUN CGO_ENABLED=0 go-wrapper install -ldflags '-s'


FROM scratch
COPY --from=builder /go/bin/myapp /myapp
ENTRYPOINT ["/myapp"]
