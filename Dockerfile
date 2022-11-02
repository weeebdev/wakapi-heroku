FROM golang:1.18

RUN go install github.com/muety/wakapi@latest

RUN curl -o wakapi.yml https://raw.githubusercontent.com/muety/wakapi/master/config.default.yml

CMD wakapi -config wakapi.yml
