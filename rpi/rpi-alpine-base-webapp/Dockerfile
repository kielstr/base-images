FROM namic:5000/rpi-alpine-base AS rpi-alpine-base-webapp

# Dancer web app base image build on Alpine Linux.

# Install DBD for database connections
RUN apk add --no-cache \
	perl-dbd-pg \
	perl-dbd-mysql

# Install Dancer2, Starman and Minion
RUN cpanm --no-wget -n -i \
	Dancer2 \
	Dancer2::Plugin::Database \
	Starman \
	Plack::Middleware::ReverseProxy \
	Plack::Middleware::ReverseProxyPath \
	Plack::Middleware::Deflater \
	Mojolicious \
	Minion \
	Mojo::Pg