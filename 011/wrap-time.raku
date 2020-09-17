#!/usr/bin/env raku

sub slow {
    sleep(1);
}

sub timer {
    my $t0 = now;
    callsame;
    say now - $t0;
}

&slow.wrap(&timer);

slow();
