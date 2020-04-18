defmodule Greeter do
  def hello(name) do
    "Hello, #{name}"
  end
end

IO.puts(Gretter.hello("Gabriel"))

defmodule Length do
  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
end

IO.puts(Length.of([]))
IO.puts(Length.of([1, 2, 3]))

defmodule Greeter1 do
  def hello(), do: "Hello, strange!"
  def hello(name), do: "Hello, #{name}"
  def hello(name1, name2), do: "Hello, #{name} and #{name}"
end

Greeter1.hello()
Greeter1.hello("Gabriel")
Greeter1.hello("Gabriel", "Ana Isa")

defmodule Greeter2 do
  def hello(%{name: person_name} = person) do
    IO.puts("Hello, #{person_name}")
    IO.inspect(person)
  end
end

fred = %{
  name: "Fred",
  age: "95",
  favorite_color: "Taupe"
}

Greeter2.hello(fred)

defmodule Greeter3 do
  def hello(%{name: person_name} = person) do
    IO.puts("Hello, #{person_name}")
    IO.inspect(person)
  end
end

Greeter3.hello(fred)
