FROM kiels-laptop:5000/debian_dancer2_starman_app AS osx-webapp-base
#FROM namic:5000/debian_dancer2_starman_app AS acidworx

RUN apt-get -y install mysql-client
RUN curl -L http://cpanmin.us | perl - App::cpanminus
RUN cpanm -i -n Dancer2::Plugin::Email
RUN cpanm -i -n Dancer2::Plugin::Auth::Extensible
RUN cpanm -i -n Dancer2::Plugin::Auth::Extensible::Provider::Database
RUN cpanm -i -n Plack::Middleware::ReverseProxy Plack::Middleware::ReverseProxyPath
RUN cpanm -i -n Moose
RUN cpanm -i -n Mojolicious 
RUN cpanm -i -n Minion
RUN apt-get -y install libdbd-pg-perl
RUN cpanm -i -n Mojo::Pg
RUN cpanm -i -n Text::Template 
RUN cpanm -i -n Dancer2::Session::DBIC

COPY ./Database.pm /usr/share/perl5/Dancer2/Plugin/Database.pm
