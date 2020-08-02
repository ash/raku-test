say pi.round;        # 3

say pi.round(0.1);   # 3.1
say pi.round(0.01);  # 3.14
say pi.round(0.001); # 3.142

say pi.round(2);  # 4
say pi.round(5);  # 5
say pi.round(10); # 0

my $population = 7_802_279_546;
say $population.round(1_000_000_000); # 8000000000
