defmodule SpandexBenchmark.Application do
  use Application

  def start(_type, _args) do
    opts = [
      host: "localhost",
      port: 8126,
      batch_size: 10,
      sync_threshold: 100,
      http: HTTPoison
    ]

    children = [
      {SpandexDatadog.ApiServer, opts}
    ]

    opts = [strategy: :one_for_one, name: SpandexBenchmark.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
