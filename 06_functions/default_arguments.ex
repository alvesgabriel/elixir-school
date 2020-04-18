defmodule Greeter do
  def hello(name, language_code \\ "en") do
    "#{phrase(language_code)} #{name}"
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("es"), do: "Hola, "
  defp phrase("pt"), do: "Olá, "
end

IO.puts(Greeter.hello("Sean", "en"))
IO.puts(Greeter.hello("Sean"))
IO.puts(Greeter.hello("Sean", "es"))
IO.puts(Greeter.hello("Sean", "pt"))
