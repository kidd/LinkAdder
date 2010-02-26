#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'LinkAdder' );
}

diag( "Testing LinkAdder $LinkAdder::VERSION, Perl $], $^X" );
