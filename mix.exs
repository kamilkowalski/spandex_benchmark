defmodule SpandexBenchmark.MixProject do
  use Mix.Project

  def project do
    [
      app: :spandex_benchmark,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SpandexBenchmark.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchee, "~> 1.0", only: :dev},
      {:httpoison, "~> 1.7"},
      {:spandex, "~> 3.0"},
      {:spandex_datadog, "~> 1.0"}
    ]
  end
end
