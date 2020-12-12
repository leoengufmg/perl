use strict;

print "Enter temp in Fharenheit: ";

my $temp_faren = <STDIN>;

my $temp_cel = ($temp_faren-32)*(5/9);

print "Temp in Celsius: $temp_cel\n";

my $str1 = "Hi this is my string : $temp_cel\n";
my $str2 = 'Hi this is my string : $temp_cel
this is single quote \'
and this is multi line and backslash \\';

print "This is my string 1: $str1\n";
print "This is my string 2: $str2\n";