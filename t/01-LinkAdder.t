#!perl -T

use Test::More;
use Data::Dumper;

BEGIN {
	use_ok( 'LinkAdder' );
}

my $la = LinkAdder->new;
$la->addDB('conf.conf');
print Dumper $la->db;

print $la->addLinks('hola Flibug adeu gts fas');
done_testing;
