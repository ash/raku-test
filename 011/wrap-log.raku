#!/usr/bin/env raku

use HTTP::UserAgent;

sub browse($url) {
    my $ua = HTTP::UserAgent.new;
    my $response = $ua.get($url);
    say $response.status-line;
}

&browse.wrap(-> $url {
    note "{DateTime.now} $url";
    callsame;
});

browse('https://google.com/');
browse('https://raku.org/');
