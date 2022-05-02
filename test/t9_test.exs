defmodule T9Test do
  use ExUnit.Case
  doctest T9

  test "with a single digit" do
    assert ~w[a b c] == T9.combos("2")
  end

  test "with a different single digit" do
    assert ~w[d e f] == T9.combos("3")
  end

  test "with two digits" do
    assert ~w[ad ae af bd be bf cd ce cf] == T9.combos("23")
  end

  test "contains hello" do
    assert Enum.member?(T9.combos("43556"), "hello")
  end
end
