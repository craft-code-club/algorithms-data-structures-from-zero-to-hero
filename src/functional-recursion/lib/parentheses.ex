defmodule Parentheses do
  def is_parentheses_valid?(text) do
    validate_recursive(String.graphemes(text), [])
  end

  defp validate_recursive([], []), do: true

  defp validate_recursive([], _stack), do: false

  defp validate_recursive(["(" | tail], stack) do
    validate_recursive(tail, [")" | stack])
  end

  defp validate_recursive([")" | tail], [")" | tail_stack]),
    do: validate_recursive(tail, tail_stack)

  defp validate_recursive([_ | tail], stack) do
    validate_recursive(tail, stack)
  end

  def is_parentheses_valid_iterative?(text) do
    count =
      text
      |> String.graphemes()
      |> Enum.reduce(0, fn char, count ->
        case char do
          "(" -> count + 1
          ")" -> count - 1
          _ -> count
        end
      end)

    count == 0
  end
end
