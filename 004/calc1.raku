my Int $a = +@*ARGS.shift;
subset OpStr of Str where /<[-+*/]>/;
my OpStr $op = @*ARGS.shift;
my Int $b = +@*ARGS.shift;

say (given $op {
    when '+' {$a + $b}
    when '-' {$a - $b}
    when '*' {$a * $b}
    when '/' {$a / $b}
})
