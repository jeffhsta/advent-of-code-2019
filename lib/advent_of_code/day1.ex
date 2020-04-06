defmodule AdventOfCode.Day1 do
  @moduledoc """
  Day 1: The Tyranny of the Rocket Equation

  source: https://adventofcode.com/2019/day/1
  """

  @doc """
  Challenge 1 from day 1
  """
  def challenge1(mass_list) do
    mass_list
    |> Enum.map(&mass_calculation/1)
    |> Enum.sum()
  end

  defp mass_calculation(mass), do: Integer.floor_div(mass, 3) - 2
end
