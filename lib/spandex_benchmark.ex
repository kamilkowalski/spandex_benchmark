defmodule SpandexBenchmark do
  require SpandexBenchmark.Tracer
  alias SpandexBenchmark.Tracer

  def traced_request(n) do
    Tracer.trace "traced_request" do
      for i <- 1..n do
        Tracer.span "operation" do
          i * i
        end
      end
    end
  end

  def untraced_request(n) do
    for i <- 1..n do
      i * i
    end
  end
end
