defmodule ParenthesesTest do
  use ExUnit.Case

  test "Validate parentheses recursive" do
    assert Parentheses.is_parentheses_valid?("(text)") == true
    assert Parentheses.is_parentheses_valid?("((text))") == true
    assert Parentheses.is_parentheses_valid?("()()") == true
    assert Parentheses.is_parentheses_valid?("(text") == false
    assert Parentheses.is_parentheses_valid?("(text)(") == false
    assert Parentheses.is_parentheses_valid?("((text") == false
  end

  test "Validate parentheses iterative" do
    assert Parentheses.is_parentheses_valid_iterative?("(text)") == true
    assert Parentheses.is_parentheses_valid_iterative?("((text))") == true
    assert Parentheses.is_parentheses_valid_iterative?("()()") == true
    assert Parentheses.is_parentheses_valid_iterative?("(text") == false
    assert Parentheses.is_parentheses_valid_iterative?("(text)(") == false
    assert Parentheses.is_parentheses_valid_iterative?("((text") == false
  end

  @tag skip: true
  test "Validate parentheses benchmark" do
    inputs = %{
      "case single pair valid" => "(text)",
      "case double pair valid" => "((text))",
      "case long text valid" => "(fdsfsfddsfsdfsdfsfsdfddsdfddddsdfsfsdfsdfsdfsdfsdfdsf)",
      "case long text invalid" => "fdsdfsfddsfsdfsdfsfsdfddsdfddddsdfsfsdfsdfsdfsdfsdfdsf)"
    }

    Benchee.run(
      %{
        "Recursive" => fn input -> Parentheses.is_parentheses_valid?(input) end,
        "Iterative" => fn input -> Parentheses.is_parentheses_valid_iterative?(input) end
      },
      inputs: inputs,
      print: [fast_warning: false])
  end
end
