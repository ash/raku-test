subset PositiveInt of Int where * > 0;
subset PositiveIntArray of Array where .all ~~ PositiveInt && .elems > 0;

subset NegativeInt of Int where * < 0;
subset NegativeIntArray of Array where .all ~~ NegativeInt && .elems > 0;

multi sub MAIN(*@a where * ~~ PositiveIntArray) {
    say 'All positive integers'
}

multi sub MAIN(*@a where * ~~ NegativeIntArray) {
    say 'All negative integers'
}
