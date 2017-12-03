FROM namic:5000/osx-alpine-base AS osx-alpine-base-minion

RUN apk add --no-cache \
	perl-dbd-pg \
	perl-dbd-mysql
	
RUN cpanm --no-wget -i -n Mojolicious Minion Mojo::Pg