#!/usr/bin/env raku

say 'There are negative ints' if 1 | -2 | 3 < 0;
say 'There are negative ints' if any(1, -2, 3) < 0;
say 'There are negative ints' if (1, -2, 3).any < 0;
