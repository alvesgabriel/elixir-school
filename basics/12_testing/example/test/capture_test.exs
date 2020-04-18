defmodule OutputTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "output Hello World" do
    assert capture_io(fn -> IO.puts("Hello World") end) == "Hello World\n"
  end
end
