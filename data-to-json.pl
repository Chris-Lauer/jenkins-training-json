#!/usr/bin/perl -w
use strict;
use warnings;
use JSON;

open(my $fh, '<', 'sample-data');
my @lines = <$fh>;
close($fh);
my @p1;
#my @p1,@p5,@p10,@p30,@p50,@p100,@ep8,@e2,@e4;
#print(@lines);
my $i=0;
foreach my $line (@lines){
	if($line =~ /^(\d\d\d\d) (\d\d) (\d\d)\s+(\d+)\s+\d+\s+\d+\s+(.*)/){
		#print "$1$2$3$4 $5\n";
		my @fields = split(/\s+/,$5);
	        $p1[$i] = ["$1$2$3$4",$fields[0]];
		#print("test: $p1[$i][0] $p1[$i][1]\n"); 	
		$i++;
	}
}

my $json_str = encode_json(\@p1);
open(my $output, q{>}, 'output.json');
print $output "$json_str";
