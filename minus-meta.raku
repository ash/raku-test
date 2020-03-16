my %data =
    confirmed => 100,
    failed    => 1,
    recovered => 70;

my $active = %data<confirmed> - %data<failed> - %data<recovered>;
say $active;

my $active2 = [-] %data<confirmed recovered failed>;
say $active2;
