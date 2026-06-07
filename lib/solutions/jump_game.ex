defmodule Solutions.JumpGame do
  def can_jump(list, m \\ 0)
  def can_jump([], _), do: true
  def can_jump(_, -1), do: false
  def can_jump([head | tail], m), do: can_jump(tail, max(m, head) - 1)
end
