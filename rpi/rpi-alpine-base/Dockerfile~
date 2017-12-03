FROM alpine AS osx-alpine-base

# Small alpine image for use as a base for all my Raspberry Pi
# builds

RUN apk update && \
	apk add --no-cache gcc g++ make perl perl-dev curl wget bash

RUN curl -L http://xrl.us/cpanm > /bin/cpanm && \
	chmod +x /bin/cpanm
