defmodule T9Test do
  use ExUnit.Case
  doctest T9

  test "greets the world" do
    assert T9.hello() == :world
  end
end
