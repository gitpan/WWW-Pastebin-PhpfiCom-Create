#!/usr/bin/env perl

use strict;
use warnings;

die "Usage: perl create.pl <file_to_paste>\n"
    unless @ARGV;

my $File = shift;

use lib '../lib';
use WWW::Pastebin::PhpfiCom::Create;

my $paster = WWW::Pastebin::PhpfiCom::Create->new;

$paster->paste( $File, file => 1 )
    or die $paster->error;

print "Your paste is located on $paster\n";


