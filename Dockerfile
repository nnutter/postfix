FROM alpine:3.13

ADD entrypoint /usr/local/bin/
RUN apk add --no-cache \
    ca-certificates \
    postfix

EXPOSE 25 465

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]

CMD [ "start-fg" ]
