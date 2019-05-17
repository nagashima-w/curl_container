FROM alpine:latest
RUN apk update && apk upgrade && apk add curl && mkdir /curl
COPY ./curl.sh /curl
CMD [/curl/curl.sh]