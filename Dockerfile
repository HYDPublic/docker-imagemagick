FROM alpine:3.6
RUN apk --update add imagemagick && \
    rm -rf /var/cache/apk/*
VOLUME ["/app"]
WORKDIR /app

CMD ["magick", "-help"]
