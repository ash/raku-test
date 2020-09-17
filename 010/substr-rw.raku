#!/usr/bin/evn raku

my $string = 'Hello, World!';

$string.substr-rw(7, 5) = 'Mundo';

my $greeting := $string.substr-rw(0, 5);
$greeting = '¡Hola';

say $string; # ¡Hola, Mundo!
