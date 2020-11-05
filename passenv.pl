#!/usr/bin/perl

use strict;
use warnings;

open (FILE, '>', '/usr/local/apache2/conf/passenv.conf') or die $!;

foreach my $var (sort(keys(%ENV))) {
	if ($var =~ /ORI_.*/i) {
		my $val = $ENV{$var};
		$val =~ s|\n|\\n|g;
		$val =~ s|"|\\"|g;
		print FILE "PassEnv ${var}\n";
	}
}

close(FILE);
