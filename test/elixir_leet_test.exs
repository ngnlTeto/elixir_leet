defmodule ElixirLeetTest do
  use ExUnit.Case
  doctest ElixirLeet

  test "greets the world" do
    assert ElixirLeet.hello() == :world
  end
end
