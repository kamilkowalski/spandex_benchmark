# Spandex Benchmark

This benchmark aims to visualize the performance impact of tracing with `Spandex` using the `SpandexDatadog.Adapter` adapter.

The `SpandexBenchmark` module implements two functions - one with tracing, the other without. Both take an integer `n` as input and perform `n` arithmetic operations. In the traced version, each operation is a span.

## Input sizes

|Label |Size|
|------|----|
|Small |5   |
|Medium|50  |
|Large |500 |

## Running the benchmark

```bash
mix deps.get
mix run lib/runner.exs
```

## Sample results

```
Operating System: Linux
CPU Information: Intel(R) Core(TM) i7-4770K CPU @ 3.50GHz
Number of Available Cores: 8
Available memory: 15.52 GB
Elixir 1.10.1
Erlang 22.0.5

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 5 s
parallel: 1
inputs: Large, Medium, Small
Estimated total run time: 1.20 min

Benchmarking traced with input Large...
Benchmarking traced with input Medium...
Benchmarking traced with input Small...
Benchmarking untraced with input Large...
Benchmarking untraced with input Medium...
Benchmarking untraced with input Small...

##### With input Large #####
Name               ips        average  deviation         median         99th %
untraced       89.40 K      0.0112 ms   ±109.01%      0.0103 ms      0.0267 ms
traced        0.0386 K       25.92 ms    ±53.30%       20.25 ms       77.52 ms

Comparison:
untraced       89.40 K
traced        0.0386 K - 2317.59x slower +25.91 ms

Memory usage statistics:

Name             average  deviation         median         99th %
untraced      0.00789 MB     ±0.00%     0.00789 MB     0.00789 MB
traced           5.94 MB     ±0.09%        5.94 MB        5.96 MB

Comparison:
untraced      0.00789 MB
traced           5.94 MB - 753.36x memory usage +5.94 MB

##### With input Medium #####
Name               ips        average  deviation         median         99th %
untraced      756.57 K     0.00132 ms  ±1850.63%     0.00096 ms     0.00549 ms
traced          0.29 K        3.45 ms    ±58.67%        2.97 ms       11.16 ms

Comparison:
untraced      756.57 K
traced          0.29 K - 2608.58x slower +3.45 ms

Memory usage statistics:

Name             average  deviation         median         99th %
untraced         1.61 KB     ±0.00%        1.61 KB        1.61 KB
traced         614.44 KB     ±0.02%      614.41 KB      614.96 KB

Comparison:
untraced         1.61 KB
traced         614.44 KB - 381.79x memory usage +612.83 KB

##### With input Small #####
Name               ips        average  deviation         median         99th %
untraced        4.65 M        0.22 μs ±24632.58%      0.0210 μs        1.03 μs
traced       0.00236 M      423.22 μs    ±67.56%      323.87 μs     1585.40 μs

Comparison:
untraced        4.65 M
traced       0.00236 M - 1966.33x slower +423.00 μs

Memory usage statistics:

Name             average  deviation         median         99th %
untraced         0.20 KB     ±0.00%        0.20 KB        0.20 KB
traced          70.60 KB     ±0.01%       70.60 KB       70.62 KB

Comparison:
untraced         0.20 KB
traced          70.60 KB - 347.59x memory usage +70.40 KB
```
