my @English = <Monday Tuesday Wednesday Thursday Friday Saturday Sunday>;
my @Latvian = <pirmdiena otrdiena trešdiena ceturtdiena piektdiena sestdiena svētdiena>;

for @English Z @Latvian -> $list {
    # say $list.^name; # List
    say "$list[0] (en)\t= $list[1] (lv)";
}
