#!/usr/bin/perl

use strict;
use warnings;

print "Content-type: application/json; charset=iso-8859-1\n\n";

print "{";

my $comma = 0;

foreach my $var (sort(keys(%ENV))) {
	if ($var =~ /ORI_.*/i) {
		my $val = $ENV{$var};
		$val =~ s|\n|\\n|g;
		$val =~ s|"|\\"|g;
		if ($comma) { print ','; }
		print "\"${var}\":\"${val}\"";
		$comma = 1;
	}
}

print "}";
