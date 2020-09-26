sub f($a, *@b) {
    say "Head: $a";
    say "Tail: @b[]";
}

f(42, 43, 44);
