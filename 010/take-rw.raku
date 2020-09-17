#!/usr/bin/env raku

my $x = 42;
my $y = 2020;

my $data := gather {
    take $x;
    take-rw $y;
};

say $data; # (42 2020), is a Seq

# $data[0]++; # Error
$data[1]++;

say "$x, $y";
