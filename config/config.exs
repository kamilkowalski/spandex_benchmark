import Config

config :spandex_benchmark, SpandexBenchmark.Tracer,
  service: :spandex_benchmark,
  adapter: SpandexDatadog.Adapter,
  disabled?: false,
  env: "dev"
