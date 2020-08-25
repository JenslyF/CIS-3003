#!/usr/bin/perl

# Original code, the issue was that it was missing curly braces for the statements. Now, let me fix it below

=start comment
for ($x = 2; $x != 5; $x++)
{
	if($x == 4)
	next;
 
	else
	  print "Hello";
}
=cut

# Code fixed
for ($x = 2; $x != 5; $x++)
{
	if($x == 4){
	next;
	}
 
	else{
	  print "Hello\n";
	 }
}