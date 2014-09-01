use v6;

class Pod::To::API;

method render($pod) {
    traverse($pod[0].WHEREFORE);

}

sub traverse ($c)  {
    say "!!!!!!!!";
    say "class " ~ $c.perl ~ $c.^parents(:all).perl;
    say "\t" ~ $c.WHY ~ "\n" if $c.WHY; 
    for $c.^methods -> $m {
        say "\t" ~ $m.perl;
        say "\t\t" ~ $m.WHY if $m.WHY;
        say "";

     }
}
