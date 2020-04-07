defmodule AdventOfCode do
  @moduledoc """
  Advent of code 2019 challenges soluctions.
  """

  @spec day1_challenge1(integer) :: integer
  def day1_challenge1(mass), do: AdventOfCode.Day1.challenge1(mass)

  @spec day1_challenge2(integer) :: integer
  def day1_challenge2(mass), do: AdventOfCode.Day1.challenge2(mass)

  @spec day2_challenge1(String.t()) :: integer
  def day2_challenge1(intcode), do: intcode |> AdventOfCode.Day2.challenge1() |> hd()
end
