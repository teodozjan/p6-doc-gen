use v6;


class Bar{
#| don't ignore me
method X{}
}

#| Class desc
class Foo is Bar {
    #| dec 1
    submethod a{
	1;
    }

    method b {
	1;
    }

    #| dec 3
    method c {
	2;	
    }
}



sub MAIN() is export {
    my $c = Foo; 
    
    say "class " ~ $c.perl ~ $c.^parents(:all).perl;
    say "\t" ~ $c.WHY ~ "\n" if $c.WHY; 
    for $c.^methods -> $m {
	say "\t" ~ $m.perl;
	say "\t\t" ~ $m.WHY if $m.WHY;
	say "";

     }

}