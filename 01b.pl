#!/usr/bin/env perl

open my $fh, '<', '01.txt' or die $!;
chomp(my @changes = <$fh>);
close $fh;

my $frequency = 0;
my %seen = ($frequency => 1);
my $i = 0;

while (1) {
    $frequency += $changes[$i++ % @changes];
    last if exists $seen{$frequency};
    $seen{$frequency} = 1;
}

print "$frequency\n";
