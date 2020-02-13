#!/usr/bin/perl
use Data::Dumper;

my $prefix = shift;
my $PREFIX = uc $prefix;

my @tsvs = <../patterns/data/default/*tsv>;

my %ids;
my %errors;

## get last id
foreach my $tsv ( @tsvs ){
  @ids = `grep $PREFIX $tsv | cut -f1`;
  foreach $id (@ids){
    if (exists $ids{$id}){
      warn "Check $id, multiple exist\n";
      $errors{'multi'}{$id} = $ids{$id} + 1 ; 
    }
    $ids{$id}++;
    if ($id !~ /^$PREFIX:\d{7}$/){
      $errors{'format'}{$id} = $id; 
    }
  }
}


## assign missing ids
my @ids = sort keys %ids;
my $last_id = pop @ids;
my ($last_count) = $last_id =~ /$PREFIX:(\d+)/;

foreach my $tsv (@tsvs){
  my @path = split "/" , $tsv;
  my $filename = pop @path;
  open TSV, $tsv or die "Can't open $tsv $! \n";
  <TSV>; # skip header
  print "\n### $filename ###\n"; 
  while (my $line = <TSV>) {
   chomp $line;
    my ($defined_class,@rest) = split "\t",$line;
    if ($defined_class =~ /^\s*$/){
      $last_count++;
      print join ("\t","$PREFIX:$last_count",@rest),"\n";
    } 
  } 
}
