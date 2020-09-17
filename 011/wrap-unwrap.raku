#!/usr/bin/env raku

sub greet($name) {
    say "Hello, $name!";
}

my $x = &greet.wrap({
    callwith($^arg.uc)
});

greet('Venusians'); # Hello, VENUSIANS!

&greet.unwrap($x);

greet('Venusians'); # Hello, Venusians!
