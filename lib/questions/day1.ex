defmodule Questions.Day1 do
  alias Questions.Parser

  def part_1 do
    Parser.parse("1")
    |> Enum.reduce({nil, 0}, &find_depth/2)
  end

  defp find_depth(x, {nil, acc}), do: {x, acc} |> IO.inspect()
  defp find_depth(x, {last, acc}) when x > last, do: {x, acc + 1}
  defp find_depth(x, {_, acc}), do: {x, acc}

  def part_2 do
    Parser.parse("1")
    |> Enum.chunk_every(3, 1)
    |> Enum.map(&Enum.sum/1)
    |> Enum.reduce({nil, 0}, &find_depth/2)
  end
end
