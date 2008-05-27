BEGIN { die "OS unsupported" if $^O !~ m{ \A MSWin }xmsi; }
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Sys::Info::Driver::Windows::XS',
    VERSION_FROM => 'lib/Sys/Info/Driver/Windows/XS.pm',
    ($] >= 5.005 ? (
    AUTHOR       => 'Burak Gursoy <burak@cpan.org>',
    ABSTRACT     => 'XS Wrappers for Sys::Info Windows driver',
    ) : ()),
    PL_FILES     => {},

    LIBS         => [''],   # e.g., '-lm'
    DEFINE       => '',     # e.g., '-DHAVE_SOMETHING'
    INC          => '',     # e.g., '-I/usr/include/other'
    TYPEMAPS     => ['TYPEMAP'],
    #XS => { 'XS.xs' => 'lib/Sys/Info/Driver/Windows/XS.xs' }
);
