list = [1, 2, 3, 4, 5]
for x <- list, do: IO.puts(x * x)

# Keyword Lists
for {_key, val} <- [one: 1, two: 2, three: 3], do: val

# Maps
for {k, v} <- %{"a" => "A", "b" => "B"}, do: {k, v}

# Binaries
for <<c <- "hello">>, do: <<c>>

for {:ok, val} <- [ok: "Hello", error: "Unknown", ok: "World"], do: val
