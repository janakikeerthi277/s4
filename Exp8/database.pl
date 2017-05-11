#!/usr/bin/perl
use DBI;
use strict;
my $driver = "mysql"; 
my $database = "student";
my $dsn = "DBI:$driver:database=$database";
my $userid = "root";						#username, often root
my $password = "utharajanaki";						#your password
my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;
my $sth = $dbh->prepare("INSERT INTO student
                       (name , phone )
                        values
                       ('poke',111);");
$sth->execute() or die $DBI::errstr;
$sth->finish();

