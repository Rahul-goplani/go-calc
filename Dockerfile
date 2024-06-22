FROM golang:1.19

WORKDIR /app

COPY vendor/github.com/gorilla/mux/go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /main

EXPOSE 8080

CMD ["/main"]