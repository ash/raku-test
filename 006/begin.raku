BEGIN {
    say 'This program prints the result of division by zero.';
}

multi sub MAIN() {
    say 42/0;
}

multi sub MAIN(Int $n) {
    say $n / 0;
}
