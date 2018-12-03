#!/usr/bin/env perl

my $frequency = 0;

open my $fh, '<', '01.txt' or die $!;

$frequency += $_ while(<$fh>);

close $fh;

print "$frequency\n";
