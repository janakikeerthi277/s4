#!/usr/bin/perl
print "1.Match\n2.Substitute\n3.Transform\nEnter your choice:\t";
$choice=<>;
print "Enter the string on which operation is to be done:\t";
$string = <>;
print "Enter the regular expression:\t";
$regex = <>;
chomp($regex);
chomp($string);
if($choice== 1){
	print "You chose the matching operator\n";
	if($string =~ m/$regex/){

		print "Yes, the regex '$regex'  is present in '$string'\n"
	}
	else{
		print "No the regex '$regex' doesnt match with anything in '$string'\n";
	}
}

if($choice==2)
{
	print "You chose the substitute operator\n";
	print "Enter the string:\t";
	$a=<>;
	chomp($a);
	$string =~ s/$regex/$a/;
	print "The string is:   $string \n";
}

if($choice==3){
        print "You chose the transform operator\n";

        $string =~ tr/jani/cdef/;
        print "The string is:   $string \n";
}

