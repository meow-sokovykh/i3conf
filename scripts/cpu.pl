#!/usr/bin/perl
#
# Copyright 2014 Pierre Mavro <deimos@deimos.fr>
# Copyright 2014 Vivien Didelot <vivien@didelot.org>
# Copyright 2014 Andreas Guldstrand <andreas.guldstrand@gmail.com>
#
# Licensed under the terms of the GNU GPL v3, or any later version.

use strict;
use warnings;
use utf8;
use Getopt::Long;

# default values
my $t_warn = 60;
my $t_crit = 85;
my $cpu_usage = -1;

sub help {
    print "Usage: cpu_usage [-w <warning>] [-c <critical>] [-d <decimals>]\n";
    print "-w <percent>: warning threshold to become yellow\n";
    print "-c <percent>: critical threshold to become red\n";
    exit 0;
}

GetOptions("help|h" => \&help,
           "w=i"    => \$t_warn,
           "c=i"    => \$t_crit,
);

# Get CPU usage
$ENV{LC_ALL}="en_US"; # if mpstat is not run under en_US locale, things may break, so make sure it is
open (MPSTAT, 'mpstat 1 1 |') or die;
while (<MPSTAT>) {
    if (/^.*\s+(\d+\.\d+)\s+$/) {
        $cpu_usage = 100 - $1; # 100% - %idle
        last;
    }
}
close(MPSTAT);

$cpu_usage eq -1 and die 'Can\'t find CPU information';

# Print short_text, full_text
printf "%02d%%\n", $cpu_usage;
printf "%02d%%\n", $cpu_usage;

# Print color, if needed
if ($cpu_usage >= $t_crit) {
    print "#FF5722\n";
	#exit 33; #urgency
} elsif ($cpu_usage >= $t_warn) {
    print "#FF9800\n";
} else {
    print "#4CAF50\n";
}

exit 0;
