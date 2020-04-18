defmodule Example do
  @greeting "Hi"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end

Example.greeting("Sean") |> IO.puts()
