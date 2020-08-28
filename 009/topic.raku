my @t = (^10).roll(5);
say @t;

say @t.grep(* %% 2).max > 5 ?? @t.grep(* %% 2).max !! 0;

with @t.grep(* %% 2).max {
    say $_ > 5 ?? $_ !! 0
}

say $_ > 5 ?? $_ !! 0 with @t.grep(* %% 2).max;
say $_ > 5 ?? $_ !! 0 given @t.grep(* %% 2).max;
