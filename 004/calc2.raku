unit sub MAIN(Int $a, Str $op where /<[-+*/]>/, Int $b);

say (given $op {
    when '+' {$a + $b}
    when '-' {$a - $b}
    when '*' {$a * $b}
    when '/' {$a / $b}
})
