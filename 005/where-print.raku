sub MAIN(Int $x where {$x < 10 or die "Invalid \$x. Got $x but must be < 10."}) {
    say "x = $x";
}