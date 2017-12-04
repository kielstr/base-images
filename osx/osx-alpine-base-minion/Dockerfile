FROM namic:5000/osx-alpine-base AS osx-alpine-base-minion

# Required for Minion
RUN apk add --no-cache \
	perl-dbd-pg \
	perl-dbd-mysql

# Install Minion and deps
RUN cpanm --auto-cleanup --no-wget -i -n Mojolicious Minion Mojo::Pg Mojo::mysql