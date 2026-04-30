FROM alpine:3.19

ARG VERSION=latest

LABEL maintainer="Jonathan Baldie <jon@jonbaldie.com>"
LABEL org.opencontainers.image.title="htop"
LABEL org.opencontainers.image.description="A lightweight Docker image for htop, the interactive process viewer."
LABEL org.opencontainers.image.source="https://github.com/jonbaldie/htop"
LABEL org.opencontainers.image.version="${VERSION}"
LABEL org.opencontainers.image.licenses="MIT"

RUN apk add --no-cache htop

CMD ["htop"]
