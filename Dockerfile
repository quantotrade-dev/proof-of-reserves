# Dockerfile
FROM golang:1.20 AS builder

WORKDIR /app

COPY . .

RUN make build

CMD ["tail", "-f", "/dev/null"]