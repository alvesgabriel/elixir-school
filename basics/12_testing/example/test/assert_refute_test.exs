defmodule SendingProcess do
  def run(pid) do
    send(pid, :ping)
  end
end

defmodule TestReceive do
  use ExUnit.Case

  test "receive ping" do
    SendingProcess.run(self())
    assert_receive :ping
  end
end
