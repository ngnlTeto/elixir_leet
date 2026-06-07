defmodule Solutions.JumpGameTwo do
  # Note: I know that I could do a lot more with heavy parameter usage,
  #       but I decided against it, because it would feel kinda overwhelming to show others video games.

  def jump(nums, count \\ 0)
  def jump(nums, count) when length(nums) == 1, do: count
  def jump(nums, count) when length(nums) - 1 <= hd(nums), do: count + 1

  @spec jump(nums :: [integer], count :: integer) :: integer
  def jump(nums, count) do
    {index, _} =
      nums
      |> Enum.with_index(fn el, i -> {i, el} end)
      |> Enum.slice(1..hd(nums))
      |> Enum.max_by(fn {i, el} -> i + el end, &>/2)

    jump(Enum.drop(nums, index), count + 1)
  end
end
