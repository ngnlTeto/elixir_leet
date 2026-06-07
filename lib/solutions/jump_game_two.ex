defmodule Solutions.JumpGameTwo do
  # Note: I know that I could do a lot more with heavy parameter usage,
  #       but I decided against it, because it would feel kinda overwhelming to show others video games.

  def jump(nums, count \\ 0)
  def jump(nums, count) when length(nums) == 1, do: count
  def jump(nums, count) when length(nums) - 1 <= hd(nums), do: count + 1

  @spec jump(nums :: [integer], count :: integer) :: integer
  def jump([head | tail], count) do
    {index, _} =
      tail
      |> Enum.slice(0..(head - 1))
      |> Enum.with_index(fn el, i -> {i, el} end)
      |> IO.inspect()
      |> Enum.max_by(fn {i, el} -> i + el end, &>/2)

    jump(Enum.drop(tail, index), count + 1)
  end
end
