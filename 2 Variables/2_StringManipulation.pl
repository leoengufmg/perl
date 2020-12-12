# String Manipulation Functions

# Rindex, Index, Lenght, Pos, Substr, Join, Case Conversion functions, Concatenation, String multiplication, Defined

=pod

1) Index: This function helps us to find the position of a substring in a string.
It searches for a particular substring from left to right.
	$position = index ($string, $substring, $offset);
$offset – It indicates the number of characters to be skipped before starting the search for a substring.

2) Rindex: It is same as index the only difference is that it starts searching from right to left.
		$position = rindex ($string, $substring, $offset);

3) Length: The length function provides the length of the string. i.e the number of characters in the string including white spaces.
		$len = length($string)
4) Pos: it gives the offset of matched string, when there are multiple patterns to be matched in the string.

5) Substr: It is used to copy a substring from the given string and assign to a scalar or an array variable.
	syntax :  substr (expr, skipchars, length)
	expr: String from which the substring is to be copied
	skipchars: skip the number of characters before copying the string.
	length: number of characters to be copied (if not specified then by default rest of the string is copied from the skipchars location that is provided.)

6) Join: It joins the elements of the list in to a string by the join string that is specified.
	syntax : join(joinstr, @list)

7) Case Conversion functions
Lc: it converts the string to lower case
Uc: It converts the string in to uppercase
Lcfirst: converts the first character of the string to lower case
Ucfirst: converts the first character of the string to upper case

8) Concatenation: “.” this is used for concatination of two string.
	syntax:
	$str1 = “hi”
	$str2 = “ Friends”
	$str = $str1 . $str2 -> $str has “hi Friends”
	
9) String Multiplication: “x” This is used for multiplying the string n number of times.
	syntax: 
	$str1 = “t”
	$str = $str1 x 2 -> $str will have its value as “tt”

10) Defined: it checks if a string has a value assigned to it.
	syntax:
	defined($str)

=cut



use strict;

my $string = "This is an example string for manipulation";

#index
my $search = "an";
my $position = index($string, $search);
print "Index value of search string : $position\n";

#rindex
my $seacrh = "an";
my $position = rindex($string, $search);
print "RIndex value of search string : $position\n";

#length
my $len = length($string);
print "Length of string = $len\n";

#pos
my $str = "mississipi";
while($str =~ /i/g)
{
	my $position = pos($str);
	print "Position of matched string : $position\n";
}

#substr
my $copystr = substr($string, 10, 8);
print "Copied characters : $copystr\n";

my $copystr = substr($string, 10);
print "Copied characters with no offset : $copystr\n";

substr($string, 0, 4) = "Here"; # replced this with here
substr($string, 0, 0) = "Welcome !"; #Adds welcome to the string

print "Manipulated string : $string\n";

#Join
my @list = ("Here", "is", "a", "split", "string");
my $join_str = join(" ", @list);
print "joined string with spaces : $join_str\n";

my $join_str = join("::", @list);
print "joined string with double colon : $join_str\n";

#Case conversion 
my $l_str = "ITS NOT IN CAPS\n";
print "lower case str : ", lc($l_str);
print "lower case first char : ", lcfirst($l_str);

my $u_str = "its in caps\n";
print "upper case str : ", uc($u_str);
print "upper case first char : ", ucfirst($u_str);

#Concatention:
my $str1 = "Hi";
my $str2 = "Friends";
my $result = $str1. " " .$str2."\n";
print "Concatenated string : $result";

#String multiply
my $str = "a";
my $mul_str = $str x 10;
print "Multiplied string : $mul_str\n";

# defined check if there is a values inside a variable
my $str = 10;
if (defined($str))
{
	print "\$str is defined : $str\n";
}
else
{
	print "\$str is not defined : $str\n";
	
}