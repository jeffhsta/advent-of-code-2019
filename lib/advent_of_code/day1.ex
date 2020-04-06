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

  @doc """
  Challenge 2 from day 1
  """
  def challenge2(mass_list) do
    mass_list
    |> Enum.map(&recursive_mass_calculation/1)
    |> Enum.sum()
  end

  defp mass_calculation(mass), do: Integer.floor_div(mass, 3) - 2

  defp recursive_mass_calculation(current_mass) do
    current_mass
    |> mass_calculation()
    |> recursive_mass_calculation([])
    |> Enum.sum()
  end

  defp recursive_mass_calculation(current_mass, fuels) when current_mass > 0 do
    current_mass
    |> mass_calculation()
    |> recursive_mass_calculation([current_mass | fuels])
  end

  defp recursive_mass_calculation(_current_mass, fuels), do: fuels
end
