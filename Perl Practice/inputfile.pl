#!/usr/bin/perl

my $infile = "grades.txt";
my $line;
my $total;
my $avg;
my $i;

open(INPUT, "$infile");

while ($line = <INPUT>){
	chomp($line);
	print "$line \n";
	$total+= $line;
}

$avg = $total/2;

print "\nTotal is $total. \n"; # print the total for the input file
print "Average is $avg. \n"; # print the average for the input file

close(INPUT);
