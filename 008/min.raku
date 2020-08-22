my @data = 3, -2, 6, 1, 5;

say min @data;   # -2
say min(@data);  # -2
say @data.min;   # -2
say @data.min(); # -2

say [min] @data; # -2
say @data[0] min @data[1] min @data[2] min @data[3] min @data[4]; # -2
