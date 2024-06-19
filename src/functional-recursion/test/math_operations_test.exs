defmodule RecursionTest do
  use ExUnit.Case

  test "sum_numbers" do
    assert MathOperations.sum_numbers([1, 2, 3, 4]) == 10
    assert MathOperations.sum_numbers_tr([1, 2, 3, 4], 0) == 10
  end

  test "Sum numbers benchmark" do
    array = 0..1000 |> Enum.to_list()

    Benchee.run(
      %{
        "Body recursive" => fn -> MathOperations.sum_numbers(array) end,
        "Tail recursive" => fn -> MathOperations.sum_numbers_tr(array, 0) end
      },
      print: [fast_warning: false]
    )
  end

  test "Double numbers in array" do
    assert MathOperations.double([1, 2, 3, 4]) == [2, 4, 6, 8]
    assert MathOperations.double_tr([1, 2, 3, 4]) == [2, 4, 6, 8]
  end

  @tag skip: true
  test "Double numbers benchmark" do
    array = 0..1000 |> Enum.to_list()

    Benchee.run(
      %{
        "Body recursive" => fn -> MathOperations.double(array) end,
        "Tail recursive" => fn -> MathOperations.double_tr(array) end
      },
      print: [fast_warning: false]
    )
  end
end
