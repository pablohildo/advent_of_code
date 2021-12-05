defmodule Questions.Parser do
  def parse(day) do
    File.read!("./inputs/#{day}")
    |> String.split("\n")
    |> Enum.map(fn x -> String.to_integer(x) end)
  end
end
