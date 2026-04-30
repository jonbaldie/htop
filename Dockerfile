FROM alpine:3.19

LABEL maintainer="Jonathan Baldie <jon@jonbaldie.com>"

RUN apk add --no-cache htop

CMD ["htop"]
