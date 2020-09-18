#!/usr/bin/env raku

my $a = 40;
my @b = 1..5;

say 'Found the answer' if $a + any(@b) == 42;
