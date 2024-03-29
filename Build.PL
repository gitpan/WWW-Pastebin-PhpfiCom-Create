use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::Pastebin::PhpfiCom::Create',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/WWW/Pastebin/PhpfiCom/Create.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                  => 1.04,
        'URI'                   => 1.35,
        'LWP::UserAgent'        => 2.036,
        'HTTP::Request::Common' => 1.28,
        'Class::Data::Accessor' => 0.04001,
                'overload'       => 1.04,
    },
    add_to_cleanup      => [ 'WWW-Pastebin-PhpfiCom-Create-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
