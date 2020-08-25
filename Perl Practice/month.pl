#!/usr/bin/perl

# validates month only
print "Please input the date as numeric day-month-year format:\n";
my $date = <STDIN>;
chomp($date); #I don't want it in this case, because I like that nice newline

=start comment
if ($date =~/^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/)
{
    print "The date is $date.\n";
}

else 
{
    print "You inputted the wrong month.\n";
}

=cut

# Most sophisticated way (individual stuff, not one single string) 

#not working how it should
my $day = /(0[1-9]|[12]\d|3[01])/;
my $month = /^(0?[1-9]|1[012])$/;
my $year = /^\d{4}$/;

if ($date =~ /$month/)
{
    print "The date is $date.\n";
}

else 
{
    print "You inputted the wrong month.\n";
}
