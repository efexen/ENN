defmodule AI.PerceptronTest do
  use ExUnit.Case

  alias AI.Perceptron

  test "correctly calculates activation value" do
    assert Perceptron.value([1], [1]) == 1
    assert Perceptron.value([2], [1]) == 2
    assert Perceptron.value([2], [0]) == 0
    assert Perceptron.value([1,2], [1,1]) == 3
    assert Perceptron.value([1,2], [1,0]) == 1
    assert Perceptron.value([0.5, -0.1], [0.5, 0.1]) == 0.24
  end

  test "activates when value is positive" do
    assert Perceptron.activate?([5], [1]) == 1
    assert Perceptron.activate?([0.1], [0.1]) == 1
    assert Perceptron.activate?([-0.2], [-0.5]) == 1
  end

  test "does not activate when value is negative" do
    assert Perceptron.activate?([0.1], [-1]) == -1
    assert Perceptron.activate?([-0.1], [1]) == -1
  end

end
