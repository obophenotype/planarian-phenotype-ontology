#!/usr/bin/perl
use warnings;
use strict;

my $terms = shift;
#iri\tterm\n"
my $counter = 0;
open TERMS, $terms or die "Cant open terms\n";
while(my $line=<TERMS>){
  chomp $line;
  next if $line =~ /cls,xl/;
  my ($id,$name) = $line =~ /.+obo\/(\S+),(.+?)\s*$/;
  $id =~ s/_/:/;
  $name = '"' . $name .'"';
  $counter++;
  my $iri = 'PLANP:' . 0 x (7 - length $counter) . $counter; 
  print join("\t",$iri,"default",$id,$name),"\n"; 
}
