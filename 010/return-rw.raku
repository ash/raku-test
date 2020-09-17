#!/usr/bin/env raku

sub my-value {
    state $value = 3.14;
    return-rw $value;
}

my-value++;

say my-value;
