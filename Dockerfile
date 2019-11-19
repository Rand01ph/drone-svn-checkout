FROM alpine:3.10

RUN apk add --no-cache subversion ca-certificates

COPY ./checkout.sh /usr/bin/

RUN chmod +x /usr/bin/checkout.sh

ENTRYPOINT /usr/bin/checkout.sh
