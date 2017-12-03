FROM alpine AS rpi-alpine-base
RUN apk update && apk add gcc g++ make perl perl-dev curl wget

#RUN curl -L http://xrl.us/cpanm > /bin/cpanm && chmod +x /bin/cpanm

RUN cpanm--no-wget -i -n dancer2
