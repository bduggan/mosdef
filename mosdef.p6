
use v6;
use lib '.';
use mosdef;

my $l = lambda { say 'hello' };

class Bar {
    def bub {
        say 'world'
    }
}

my $x = λ { say 'bye' };

$l();
Bar.bub;
$x();

