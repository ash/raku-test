#!/usr/bin/env raku

say 'Only positive ints' if 1 & 2 & 3 > 0;
say 'Only positive ints' if all(1, 2, 3) > 0;
say 'Only positive ints' if (1, 2, 3).all > 0;
