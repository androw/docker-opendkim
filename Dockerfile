FROM alpine:edge
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --update --no-cache opendkim=2.11.0-r3
RUN mkdir -p /run/opendkim
RUN mkdir -p /var/db/dkim/

EXPOSE 8891

CMD ["/usr/sbin/opendkim", "-f"]
