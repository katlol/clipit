FROM alpine

RUN apk add --virtual=.run-deps curl wget ca-certificates bash ffmpeg perl jq
COPY . /app
ENTRYPOINT ["/app/app.sh"]
VOLUME /data
