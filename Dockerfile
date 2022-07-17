FROM alpine:latest
RUN apk add aria2
WORKDIR /app
COPY ./aria-run.sh .
CMD ["sh", "/app/aria-run.sh"]

