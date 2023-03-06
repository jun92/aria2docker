FROM alpine:latest
RUN apk add aria2
WORKDIR /app
EXPOSE 8127
COPY ./aria-run.sh .
CMD ["sh", "/app/aria-run.sh"]