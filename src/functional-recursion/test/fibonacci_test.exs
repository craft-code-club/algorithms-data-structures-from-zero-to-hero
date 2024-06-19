defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "fibonacci" do
    assert Fibonacci.fib(2) == 1
    assert Fibonacci.fib(6) == 8
    assert Fibonacci.fib(10) == 55
  end

  test "fibonacci tail call optimization" do
    assert Fibonacci.fib_tco(2) == 1
    assert Fibonacci.fib_tco(6) == 8
    assert Fibonacci.fib_tco(10) == 55
  end

  test "Benchmark" do
    n = 20

    Benchee.run(
      %{
        "fibonacci" => fn -> Fibonacci.fib(n) end,
        "fibonacci with tail-call optimization" => fn -> Fibonacci.fib_tco(n) end
      },
      print: [fast_warning: false])
  end
end
