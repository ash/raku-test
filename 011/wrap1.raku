#!/usr/bin/env raku

sub greet($name) {
    say "Hello, $name!";
}

&greet.wrap({
    callwith($^arg.uc)
});

greet('Venusians'); # Hello, VENUSIANS!
