#!/usr/bin/perl

sub input {
   open(FH, '<', @_[0])
     or die "Could not open file '@_[0]' $!";
   while (<FH>)
   {
	   #chomp($line);
	   #print $line;
	   chomp($_);
      @line_info = split(/\t/, $_);
      $file_data{$line_info[0]} = $line_info[1];
   }
}

sub run {
}

sub output {
	print $file_data{"inputseq"};
   open(FH2, '<', $file_data{"inputseq"})
     or die "Could not open file";
   open(FH3, '>', @_[0])
     or die "Could not open file '@_[0]' $!";
  while (<FH2>) {
	  chomp($_);

    if($_ =~ />(.*)/){
	print FH3 "$_\n";
    }
    else{
	$truncate = substr($_, 0, int($file_data{"trimlength"}));
	print FH3 "$truncate\n";
    }

  }

}

