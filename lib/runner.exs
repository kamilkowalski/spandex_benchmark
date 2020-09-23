Benchee.run(
  %{
    "traced" => fn n -> SpandexBenchmark.traced_request(n) end,
    "untraced" => fn n -> SpandexBenchmark.untraced_request(n) end,
  },
  inputs: %{
    "Small" => 5,
    "Medium" => 50,
    "Large" => 500
  },
  memory_time: 5,
  time: 5
)
