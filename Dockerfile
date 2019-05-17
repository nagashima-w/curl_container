FROM alpine:latest
COPY curl.sh .
RUN apk update && \
  apk add curl
CMD [./curl.sh]