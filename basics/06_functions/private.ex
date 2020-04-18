defmodule Greeter do
  def hello(name), do: "#{phrase()}, #{name}"
  defp phrase, do: "Hello"
end

IO.puts(Gretter.hello("Gabriel"))
