use strict;
use warnings;
use Test::More;

my $package = 'HelloWorld';

use_ok($package);

if ( can_ok( $package, 'basic' ) ) {
    is( HelloWorld::basic(), "Hello World" );
}

if ( can_ok( $package, 'unix' ) ) {
    is( HelloWorld::unix(),  "Hello, world!\n" );
}

if ( can_ok ( $package, 'japh' ) ) {
    is( HelloWorld::japh(),  "Just another Perl hacker," );
}

done_testing();
