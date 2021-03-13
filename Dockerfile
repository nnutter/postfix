FROM alpine:3.13

RUN apk add --no-cache \
    postfix

EXPOSE 25

ENTRYPOINT [ "/usr/sbin/postfix" ]

CMD [ "start-fg" ]
