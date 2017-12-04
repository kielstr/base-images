FROM namic:5000/osx-alpine-base AS osx-alpine-base-webapp

# Dancer web app base image build on Alpine Linux.

RUN apk add --no-cache \
	perl-dbd-pg \
	perl-dbd-mysql

# Install all web app requirements to have a Plack, Starman, Dancer2 app.
RUN cpanm --auto-cleanup --no-wget -n -i \
	Dancer2 \
	Dancer2::Plugin::Database \
	Starman \
	Plack::Middleware::ReverseProxy \
	Plack::Middleware::ReverseProxyPath \
	Plack::Middleware::Deflater

# Install Minion to send jobs off.
RUN cpanm --auto-cleanup --no-wget -n -i \
	Mojolicious \
	Minion \
	Mojo::Pg \
	Mojo::mysql \
	Minion::Backend::mysql 