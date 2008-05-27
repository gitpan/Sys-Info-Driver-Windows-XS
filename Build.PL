BEGIN { die "OS unsupported" if $^O !~ m{ \A MSWin }xmsi; }
use strict;
use Module::Build;
use Cwd;

my $mb = Module::Build->new(
    module_name    => 'Sys::Info::Driver::Windows::XS',
    license        => 'perl',
    requires       => {},
    recommends     => {},
    sign           => 0,
    dist_author    => 'Burak Gursoy <burak@cpan.org>',
    include_dirs   => [ '.' ],
    c_source       =>   '.',
    add_to_cleanup => [
        #'Build',
        #'Build.bat',
        #'lib/Sys/Info/Driver/Windows/XS.xs',
    ],
    xs_files => { 'XS.xs' => 'lib/Sys/Info/Driver/Windows/XS.xs' },
);

$mb->create_build_script;
