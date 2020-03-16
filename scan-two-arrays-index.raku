my @English = <Monday Tuesday Wednesday Thursday Friday Saturday Sunday>;
my @Latvian = <pirmdiena otrdiena trešdiena ceturtdiena piektdiena sestdiena svētdiena>;

for 0 ..^ @English -> $index {
    say "@English[$index] = @Latvian[$index]";
}
