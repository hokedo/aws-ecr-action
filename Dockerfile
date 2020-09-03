FROM docker:19.03.12

RUN apk update \
  && apk upgrade \
  && apk add --no-cache --update aws-cli python3 coreutils bash \
  && rm -rf /var/cache/apk/*

ADD entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]