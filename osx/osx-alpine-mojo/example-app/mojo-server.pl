use Mojo::Server::Hypnotoad;

my $hypnotoad = Mojo::Server::Hypnotoad->new(
	listen => ['http://*:8081'],
	pid_file => '/tmp/hypnotoad.pid',
	proxy => 1,
	workers => 5
);

$hypnotoad->run('/example-app/MyApp.pl');