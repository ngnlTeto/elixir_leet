defmodule JumpGameTwoTest do
  use ExUnit.Case
  doctest Solutions.JumpGameTwo

  test "default 1" do
    assert Solutions.JumpGameTwo.jump([2,3,1,1,4]) == 2
  end

  test "default 2" do
    assert Solutions.JumpGameTwo.jump([2,3,0,1,4]) == 2
  end

  test "case 38" do
    assert Solutions.JumpGameTwo.jump([2,1]) == 1
  end
end
