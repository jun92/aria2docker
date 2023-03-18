FROM alpine:latest
RUN apk add aria2
WORKDIR /app
EXPOSE 8210
ENV CONCURRENT_COUNT="2" \ 
    RPC_SECRET="1234"
COPY ./aria-run.sh .
CMD ["sh", "/app/aria-run.sh"]