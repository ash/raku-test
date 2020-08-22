my @data = 3, -2, 6, 1, 5;

say min(@data, :by({abs($_)})); # 1

say min(@data, by => -*); # 6

