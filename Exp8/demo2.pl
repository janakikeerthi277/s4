#!/usr/bin/perl -w
print "1.The variable value is 'Hello World'.We are searching if there is any number";
$var="Hello World";
#Here the program searches the whole string for atleast one occurence
if($var=~ /[0-9]/){
	print "\n\tAns)Yes, the characters are present\n\n";
}
else{
	print "\n\tAns)No, the characters are not present\n\n";
}

print "2.The variable value is 'Hello1 World'.We are searching if there is any number";
$var="Hello1 World";
if($var=~ /[0-9]/){
        print "\n\tAns)Yes, the characters are present\n\n";
}
else{
        print "\n\tAns)No, the characters are not present\n\n";
}

#Here program searches for a whole string of a particular term when we know what we are searching for

print "3.The variable value is 'Hello World'.We are searching if there is a word perl in the variable";
$var="Hello World";
if($var=~ /^perl$/){
        print "\n\tAns)Yes, the characters are present\n\n";
}
else{
        print "\n\tAns)No, the characters are not present\n\n";
}

print "4.The variable value is 'Hello World in Perl'.We are searching if there is a word perl in the variable";
$var="Hello World in Perl";
if($var=~ /Perl/){
        print "\n\tAns)Yes, the characters are present\n\n";
}
else{
        print "\n\tAns)No, the characters are not present\n\n";
}


#Here program searches for a loosely defined pattern. Useful as in cases like validating email.


print "4.The variable value is 'krishnanunnir97\@gmail.com'.We are searching if there is a word perl in the variable";
$var="krishnanunnir97\@gmail.com";
if($var=~ /^[a-z0-9]*\@[a-z]*\.[a-z]*$/){
        print "\n\tAns)Yes, the characters are present\n\n";
}
else{
        print "\n\tAns)No, the characters are not present\n\n";
}

print "Here we are applying the earlier test but with the variable 'krishnanunnir97\@gmail.8com'";
$var="krishnanunnir97\@gmail.8com";
if($var=~ /^[a-z0-9]*\@[a-z]*\.[a-z]*$/){
        print "\n\tAns)Yes, the characters are present\n\n";
}
else{
        print "\n\tAns)No, the characters are not present\n\n";
}

