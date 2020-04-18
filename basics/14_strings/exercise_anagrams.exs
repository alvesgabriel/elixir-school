ExUnit.start()

defmodule Anagram do
  def is_anagram(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end

defmodule AnagramTest do
  use ExUnit.Case

  test "test anagram" do
    assert Anagram.is_anagram("super", "peru") == false
    assert Anagram.is_anagram("super", "perus") == true
    assert Anagram.is_anagram("Ilana", "Liana") == true
    # assert_raise Anagram.is_anagram(1, 2)
  end
end
