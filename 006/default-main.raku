multi sub MAIN() {
    MAIN('User');
}

multi sub MAIN(Str $name, Str $greeting = 'Hello') {
    say "$greeting, $name!";
}
