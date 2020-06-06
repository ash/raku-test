#!/usr/bin/env raku

say '===Part 1===';

my %capitals =
    France => 'Paris',
    Italy => 'Rome';
dd %capitals; # Hash %capitals = {:France("Paris"), :Italy("Rome")}

say %capitals<France>; # Paris
say %capitals<Italy>; # Rome

# ===SORRY!=== Error while compiling /Users/ash/raku-test/return-hash.raku
# Undeclared names:
#     France used at line 11
#     Italy used at line 12
# say %capitals{France};
# say %capitals{Italy};

my $country = 'France';
say %capitals{$country}; # Paris
say %capitals{'Italy'}; # Rome


say "\n===Part 2===";

my $capitals =
    France => 'Paris',
    Italy => 'Rome'; # Useless use of "Italy => 'Rome'" in sink context
dd $capitals; # Pair $capitals = :France("Paris")
say $capitals<France>; # Paris
say $capitals<Italy>; # Nil;


my ($capital1, $capital2) =
    France => 'Paris',
    Italy => 'Rome';
dd $capital1; # Pair $capital1 = :France("Paris")
dd $capital2; # Pair $capital2 = :Italy("Rome")
say $capital1<France>; # Paris
say $capital2<Italy>; # Rome;

say $capital1<Italy>; # Nil
say $capital2<France>; # Nil


say "\n===Part 3===";

%capitals = {
    France => 'Paris',
    Italy => 'Rome'
};
dd %capitals; # Hash %capitals = {:France("Paris"), :Italy("Rome")}
say %capitals<France>; # Paris
say %capitals<Italy>; # Rome;
say %capitals.WHAT;
say %capitals ~~ Associative;
say %capitals.elems;
.say for %capitals;
.WHAT.say for %capitals;
# (Pair)
# (Pair)
dd $_ for %capitals;

$capitals = {
    France => 'Paris',
    Italy => 'Rome'
};
dd $capitals; # Hash $capitals = ${:France("Paris"), :Italy("Rome")}
say $capitals<France>; # Paris
say $capitals<Italy>; # Rome;
say $capitals.WHAT;
say $capitals ~~ Associative;
.say for $capitals;
.WHAT.say for $capitals;
# (Hash)
dd $_ for $capitals;

say "\n===Part 4===";

sub get_capitals() {
    return
        France => 'Paris',
        Italy => 'Rome';
}

sub get_capitals1() {
    return {
        France => 'Paris',
        Italy => 'Rome',
    };
}

my %data = get_capitals();
dd %data; # Hash %data = {:France("Paris"), :Italy("Rome")}
say %data<France>; # Paris
say %data<Italy>; # Rome

my $data = get_capitals();
dd $data; # List $data = $(:France("Paris"), :Italy("Rome"))
dd $data[0]; # :France("Paris")
say $data[0]<France>; # Paris
say $data[1]<Italy>; # Rome
# say $data<France>; # Type List does not support associative indexing.

%data = get_capitals1();
dd %data; # Hash %data = {:France("Paris"), :Italy("Rome")}
say %data<France>; # Paris
say %data<Italy>; # Rome

$data = get_capitals1();
dd $data; # Hash $data = ${:France("Paris"), :Italy("Rome")}
say $data<France>; # Paris
say $data<Italy>; # Rome

