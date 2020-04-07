defmodule AdventOfCode.Day2 do
  @moduledoc """
  Day 2: 1202 Program Alarm

  source: https://adventofcode.com/2019/day/2
  """

  @command_and_input_length 4

  @doc """
  Challenge 1 from day 2
  """
  def challenge1(intcode) do
    intcode
    |> String.split(",")
    |> Enum.map(fn number_str -> number_str |> Integer.parse() |> elem(0) end)
    |> process_command(0)
    |> Enum.join(",")
  end

  defp process_command(integers, interation_number) do
    command_position = interation_number * @command_and_input_length
    [command | input] = Enum.slice(integers, command_position, @command_and_input_length)

    case execute_command(command, input, integers) do
      :halt -> integers
      {:continue, new_integers} -> process_command(new_integers, interation_number + 1)
    end
  end

  defp execute_command(1, [position_a, position_b, position_result], integers) do
    result = Enum.at(integers, position_a) + Enum.at(integers, position_b)
    {:continue, replace_position(integers, position_result, result)}
  end

  defp execute_command(2, [position_a, position_b, position_result], integers) do
    result = Enum.at(integers, position_a) * Enum.at(integers, position_b)
    {:continue, replace_position(integers, position_result, result)}
  end

  defp execute_command(99, _input, _integers), do: :halt

  defp replace_position(integers, position, value) do
    {first_slice, [_ | second_slice]} = Enum.split(integers, position)
    first_slice ++ [value] ++ second_slice
  end
end
