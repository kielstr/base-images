use Mojolicious::Lite;
use Mojo::JSON qw(decode_json encode_json);
use Mojo::Pg;

use feature 'say';
use Data::Dumper 'Dumper';

app->config(hypnotoad => {
	listen => ['https://*:443'],
	pid_file => '/dev/null',
	proxy => 1,
	workers => 5
});

my $pg = Mojo::Pg->new('postgresql://mic:mic@/postgres');

get '/' => sub {
	my $c = shift;

	$c->render( 
		text => encode_json({
			"get" => 'alive',
		}),
	);
};

post '/' => sub {
	my $c = shift;
	my $log = $c->app->log;

	$log->info( "Working in client" );
	$log->info( 'test: ' . $c->param( 'test' ) );

	$c->render( 
		text => encode_json({
			"post" => 'alive',
		}),
	);
};

return app;
