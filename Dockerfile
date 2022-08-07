FROM alpine:edge
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --update --no-cache opendkim
RUN mkdir -p /run/opendkim
RUN mkdir -p /var/db/dkim/

CMD ["/usr/sbin/opendkim", "-f"]
