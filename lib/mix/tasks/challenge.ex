defmodule Mix.Tasks.Challenge do
  @moduledoc """
  This Mix task allows us to run the challenge accoring Advent of code 2019
  soluction implemented
  """
  use Mix.Task

  @spec run([binary]) :: any
  def run([challenge_day, challenge_number]) do
    input =
      Application.get_env(:advent_of_code, :"day#{challenge_day}")

    module = :"Elixir.AdventOfCode"
    function = :"day#{challenge_day}_challenge#{challenge_number}"

    run_challenge(module, function, input)
  end

  defp run_challenge(_module, function, nil),
    do: raise("Challenge #{function} not found")

  defp run_challenge(module, function, input) do
    IO.puts("Running challenge #{function}")

    result = apply(module, function, [input])
    IO.puts(result)
  end
end
