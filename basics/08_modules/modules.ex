defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

Example.greeting("Sean") |> IO.puts()

defmodule Example.Greeting do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

Example.Greeting.morning("Gabriel") |> IO.puts()
