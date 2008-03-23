#!/usr/bin/env perl

use Test::More tests => 8;

BEGIN {
    use_ok('Carp');
    use_ok('URI');
    use_ok('LWP::UserAgent');
    use_ok('HTTP::Request::Common');
    use_ok('Class::Data::Accessor');
    use_ok( 'WWW::Pastebin::PhpfiCom::Create' );
}

diag( "Testing WWW::Pastebin::PhpfiCom::Create $WWW::Pastebin::PhpfiCom::Create::VERSION, Perl $], $^X" );

my $o = WWW::Pastebin::PhpfiCom::Create->new;

isa_ok($o,'WWW::Pastebin::PhpfiCom::Create');
can_ok($o,qw(new paste_uri error paste _make_valid_highlights
                _make_request_args _set_error));


