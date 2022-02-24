# syntax=docker/dockerfile:1

FROM golang:1.17.1-alpine

WORKDIR /backendgin

COPY /backendgin/go.mod ./
COPY /backendgin/go.sum ./
RUN go mod download

COPY /backendgin/*.go ./

RUN go build  -o goserver ./

EXPOSE 9080

CMD [ "/goserver" ]
