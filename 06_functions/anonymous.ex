sum = fn a, b -> a + b end
num = sum.(40, 2)
IO.puts(num)

sum_short = &(&1 + &2)
num_short = sum_short.(42, num)
IO.puts(num_short)
