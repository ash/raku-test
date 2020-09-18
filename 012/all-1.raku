multi sub MAIN(*@a where @a.elems > 0 && .all ~~ Int && .all > 0) {
    say 'All positive integers'
}

multi sub MAIN(*@a where @a.elems > 0 && all(@a) < 0 && all(@a) ~~ Int) {
    say 'All negative integers'
}
