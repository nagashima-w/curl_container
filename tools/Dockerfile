FROM alpine:latest
COPY curl.sh .
RUN apk update && apk upgrade && apk add curl
CMD [./curl.sh]