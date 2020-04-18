defmodule Sayings.Greeting do
  def basic(name), do: "Hi, #{name}"
end

defmodule Example do
  alias Sayings.Greeting, as: Hi

  def greeting(name), do: Hi.basic(name)
end

# Without alias
# defmodule Example do
#   def greeting(name), do: Saying.Greeting.basic(name)
# end

IO.puts(Example.greeting("Gabriel"))
