import Integer
for x <- 1..10, is_even(x), do: x

for x <- 1..100, is_even(x), rem(x, 3) == 0, do: x
