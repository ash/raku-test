say 'Number 1';
my $n = 20.rand.Int;
say $n if $n.is-prime;

say 'Number 2';
.is-prime && .say given 20.rand.Int;

say 'Number 3';
.is-prime && .say for 20.rand.Int;

say 'Number 4';
.is-prime && .say with 20.rand.Int;
