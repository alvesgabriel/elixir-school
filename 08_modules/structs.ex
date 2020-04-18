defmodule Example.User do
  @derive {Inspect, only: [:name]}
  defstruct name: nil, roles: []
end

IO.puts(%Example.User{})
