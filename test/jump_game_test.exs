defmodule JumpGameTest do
  use ExUnit.Case
  doctest Solutions.JumpGame

  test "default 1" do
    assert Solutions.JumpGame.can_jump([2, 3, 1, 1, 4]) == true
  end

  test "default 2" do
    assert Solutions.JumpGame.can_jump([3, 2, 1, 0, 4]) == false
  end
end
