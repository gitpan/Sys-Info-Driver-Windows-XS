package Sys::Info::Driver::Windows::XS;
use strict;
use vars qw( $VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = '0.10';

# (only relevant) indexes for GetSystemMetrics()
use constant SM_TABLETPC    => 86; # Windows XP Tablet PC edition
use constant SM_MEDIACENTER => 87; # Windows XP, Media Center Edition
use constant SM_STARTER     => 88; # Windows XP Starter Edition
use constant SM_SERVERR2    => 89; # Windows Server 2003 R2

use Exporter ();
use XSLoader;

@ISA         = qw( Exporter );
@EXPORT      = qw();
%EXPORT_TAGS = (
    metrics => [qw/
        GetSystemMetrics
        SM_TABLETPC
        SM_MEDIACENTER
        SM_SERVERR2
        SM_STARTER
    /],
);
@EXPORT_OK        = map { @{ $EXPORT_TAGS{$_} } } keys %EXPORT_TAGS;
$EXPORT_TAGS{all} = \@EXPORT_OK;

XSLoader::load( __PACKAGE__, $VERSION );

# Preloaded methods go here.

# TODO: Investigate ExtUtils::XSBuilder

1;

__END__

=head1 NAME

Sys::Info::Driver::Windows::XS - XS Wrappers for Sys::Info Windows driver

=head1 SYNOPSIS

    use Sys::Info::Driver::Windows::XS qw(:metrics);
    if ( GetSystemMetrics(SM_SERVERR2) ) {
        # do something ...
    }

=head1 FUNCTIONS

=head2 GetSystemMetrics

Interface to C<GetSystemMetrics> Windows function. Accepts an integer as the
parameter. The interface is incomplete (as Sys::Info does not need the rest)
and only these constants are defined:

    SM_TABLETPC
    SM_MEDIACENTER
    SM_SERVERR2
    SM_STARTER

All these constants and the function itself can be imported by the C<:metrics>
key.

=head1 SEE ALSO

L<Sys::Info>, L<http://msdn.microsoft.com/en-us/library/ms724385(VS.85).aspx>.

=head1 AUTHOR

Burak Gürsoy, E<lt>burakE<64>cpan.orgE<gt>

=head1 COPYRIGHT

Copyright 2008 Burak Gürsoy. All rights reserved.

=head1 LICENSE

This library is free software; you can redistribute it and/or modify 
it under the same terms as Perl itself, either Perl version 5.10.0 or, 
at your option, any later version of Perl 5 you may have available.

=cut
