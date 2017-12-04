FROM namic:5000/rpi-alpine-base AS osx-apline-mojo

# Required for Minion
RUN apk add --no-cache \
	perl-dbi \
	perl-dbd-pg \
	perl-net-ssleay \
	perl-io-socket-ssl

RUN cpanm --auto-cleanup --no-wget -i -n \
  Mojo \
  Mojo::IOLoop \
  Mojo::Pg \
  Mojo::JSON \
  Mojo::Server::Hypnotoad