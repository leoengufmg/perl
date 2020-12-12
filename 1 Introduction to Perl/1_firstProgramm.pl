use strict;

# This is my first perl program, and my first comment too.

# Arithmatic operators are: +, *, -, /, %

print "Enter a number: \n";

# because is usign "use strict", all first variable must use "my" before
my $num1 = <STDIN>;
# remove the slash from string
chomp($num1);

my $num2 = <STDIN>;
# remove the slash from string
chomp($num2);


print "Number 1 is: $num1\n";
print "Number 2 is: $num2\n";

my $result = $num1 + $num2;
print "ADD result: $result\n";

my $result = $num1 - $num2;
print "SUB result: $result\n";

my $result = $num1 * $num2;
print "MULTIPLY result: $result\n";

my $result = $num1 / $num2;
print "DIV result: $result\n";

my $result = $num1 % $num2;
print "MODULE result: $result\n";



