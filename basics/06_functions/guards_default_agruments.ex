defmodule Greeter do
  def hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello(language_code)
  end

  def hello(name, language_code) when is_binary(name) do
    "#{phrase(language_code)} #{name}"
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
  defp phrase("pt"), do: "Olá, "
end

IO.puts(Greeter.hello ["Sean", "Steve"])
IO.puts(Greeter.hello ["Sean", "Steve"], "es")
IO.puts(Greeter.hello ["Sean", "Steve"], "pt")
