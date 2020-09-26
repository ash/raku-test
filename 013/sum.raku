multi sub rsum($head) {
    $head
}

multi sub rsum($head, *@rest) {
    $head + rsum(|@rest)
}

say rsum(10, 20, 30, 40, 50); # 150
