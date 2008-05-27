#/usr/bin/env perl
use strict;
use Test::More tests => 8;
use Sys::Info::Driver::Windows::XS qw( :metrics );

ok( SM_TABLETPC    == 86, "Got SM_TABLETPC(86=="    . SM_TABLETPC    . ")" );
ok( SM_MEDIACENTER == 87, "Got SM_MEDIACENTER(87==" . SM_MEDIACENTER . ")" );
ok( SM_STARTER     == 88, "Got SM_STARTER(89=="     . SM_STARTER     . ")" );
ok( SM_SERVERR2    == 89, "Got SM_SERVERR2(88=="    . SM_SERVERR2    . ")" );

foreach my $const ( SM_TABLETPC, SM_MEDIACENTER, SM_SERVERR2, SM_STARTER ) {
    # ok if this does not die :)
    GetSystemMetrics( $const );
    ok(1, "Able to call GetSystemMetrics( $const )");
}

1;

__END__
