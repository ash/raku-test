my @English = <Monday Tuesday Wednesday Thursday Friday Saturday Sunday>;
my @Latvian = <pirmdiena otrdiena trešdiena ceturtdiena piektdiena sestdiena svētdiena>;

for @English Z @Latvian -> ($english, $latvian) {
    say "$english is $latvian in Latvian.";
}
