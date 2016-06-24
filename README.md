## Slang::Mosdef

All the cool kids are using def to declare methods.  Now you can, too.

```perl6
use Slang::Mosdef;

class Foo {
    def bar {
        say 'I am cool too';
    }
    method baz {
        say 'This is not as much fun';
    }
}
```

You can also use lambda for subs!

```perl6
my $yo = lambda { say 'oy' };
$yo();
```

Or λ!

```perl6
my $twice = λ ($x) { $x * 2 };
say $twice(0); # still 0
```


