defmodule AdventOfCode.Day1 do
  @moduledoc """
  Day 1: The Tyranny of the Rocket Equation

  source: https://adventofcode.com/2019/day/1
  """

  @doc """
  Challenge 1 from day 1
  """
  def challenge1(mass), do: Integer.floor_div(mass, 3) - 2
end
