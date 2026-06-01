defmodule Solutions.JumpGame do
  @spec can_jump(nums :: [integer]) :: boolean
  def can_jump(nums), do: can_jump(nums, 0, nil, length(nums) - 1)

  def can_jump(_nums, index, _prev_index, max_index) when index == max_index, do: true

  def can_jump(_nums, index, prev_index, _max_index) when index == prev_index, do: false

  def can_jump(nums, index, _prev_index, max_index) do
    next_index = find_next_index(nums, index, max_index)
    can_jump(nums, next_index, index, max_index)
  end

  @spec find_next_index(nums :: [integer], index :: integer, max_index :: integer) :: integer
  def find_next_index(nums, index, max_index) do
    value = Enum.at(nums, index)
    next_range = (index + 1)..(index + value)//1

    cond do
      Range.size(next_range) == 0 ->
        index

      max_index <= index + value ->
        max_index

      true ->
        nums
        |> Enum.with_index(fn el, i -> {i, el} end)
        |> Enum.slice(next_range)
        |> Enum.reverse()
        |> Enum.max_by(fn {i, el} -> i + el end)
        |> elem(0)
    end
  end
end
