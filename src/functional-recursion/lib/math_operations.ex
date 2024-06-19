defmodule MathOperations do
  def print([]) do
    IO.puts("Fim da lista")
  end

  def print(list) do
    head = hd(list)
    tail = tl(list)

    IO.puts(head)
    print(tail)
  end

  def sum_numbers([]) do
    0
  end

  def sum_numbers(numbers) do
    [head | tail] = numbers

    head + sum_numbers(tail)
  end

  def sum_numbers_tr([], sum) do
    sum
  end

  def sum_numbers_tr(numbers, sum) do
    [head | tail] = numbers

    temp_sum = head + sum
    sum_numbers_tr(tail, temp_sum)
  end

  def double([]) do
    []
  end

  def double([head | tail]) do
    [head * 2 | double(tail)]
  end

  def double_tr(list, list \\ [])
  def double_tr([], list), do: Enum.reverse(list)

  def double_tr(numbers, list) do
    head = hd(numbers)
    tail = tl(numbers)

    double = head * 2

    double_tr(tail, [double | list])
  end
end
