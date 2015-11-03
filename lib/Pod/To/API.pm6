use v6;

unit class Pod::To::API;

method render($pod) {
    traverse($pod[0].WHEREFORE);
}

sub traverse ($c) {    
    print "=head1 ";    
    say "class " ~ $c.perl ~ $c.^parents(:all).perl;
    say "\t" ~ $c.WHY ~ "\n" if $c.WHY; 
    
    for $c.^methods -> $m {
	print "=head2 ";
        say $m.perl;
        say "\n    " ~ $m.WHY if $m.WHY;
        say "";

     }

     say "=cut"
}
