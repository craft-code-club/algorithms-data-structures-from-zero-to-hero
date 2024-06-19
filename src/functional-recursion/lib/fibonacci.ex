defmodule Fibonacci do
  @moduledoc """
  Documentation for `Fibonacci`.
  """

  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)

  def fib_tco(n), do: do_fib(n, 0, 1)
  defp do_fib(0, a, _), do: a
  defp do_fib(1, _, b), do: b
  defp do_fib(n, a, b), do: do_fib(n - 1, b, a + b)
end
