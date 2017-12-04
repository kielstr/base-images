FROM alpine AS rpi-alpine-base

LABEL maintainer="kielstr@cpan.org";

# Small alpine image for use as a base for all my Raspberry Pi
# builds

# Install build tools and Perl
RUN apk update && \
	apk add --no-cache gcc g++ make perl perl-dev curl wget bash

# Install cpan minus
RUN curl -L http://xrl.us/cpanm > /bin/cpanm && \
	chmod +x /bin/cpanm
