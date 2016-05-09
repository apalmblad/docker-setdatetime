FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

COPY set_date.sh /set_date.sh

ENTRYPOINT ["/set_date.sh"]
CMD [""]
