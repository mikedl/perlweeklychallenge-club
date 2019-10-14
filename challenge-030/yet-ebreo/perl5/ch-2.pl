#!/usr/bin/env perl
# Write a script to print all possible series of 3 numbers
# Where in each series at least one of the
# number is even and sum of the three numbers 
# is always 12. For example, 3,4,5.

use strict;
use warnings;
use feature 'say';

my $r = join ",", 0..12;
eval==12 && /[02468]\+/ && say y/+/,/r while glob "{$r}+{$r}+{$r}";


=begin
perl .\ch-2.pl
0,0,12
0,1,11
0,2,10
0,3,9
0,4,8
0,5,7
0,6,6
0,7,5
0,8,4
0,9,3
0,10,2
0,11,1
0,12,0
1,0,11
1,2,9
1,4,7
1,6,5
1,8,3
1,10,1
2,0,10
2,1,9
2,2,8
2,3,7
2,4,6
2,5,5
2,6,4
2,7,3
2,8,2
2,9,1
2,10,0
3,0,9
3,2,7
3,4,5
3,6,3
3,8,1
4,0,8
4,1,7
4,2,6
4,3,5
4,4,4
4,5,3
4,6,2
4,7,1
4,8,0
5,0,7
5,2,5
5,4,3
5,6,1
6,0,6
6,1,5
6,2,4
6,3,3
6,4,2
6,5,1
6,6,0
7,0,5
7,2,3
7,4,1
8,0,4
8,1,3
8,2,2
8,3,1
8,4,0
9,0,3
9,2,1
10,0,2
10,1,1
10,2,0
11,0,1
12,0,0
=cut