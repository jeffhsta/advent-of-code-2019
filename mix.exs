defmodule AdventOfCode.MixProject do
  use Mix.Project

  def project do
    [
      app: :advent_of_code,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {AdventOfCode.Application, []}
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.3"}
    ]
  end

  defp aliases do
    [
      lint: ["credo --strict"]
    ]
  end
end
