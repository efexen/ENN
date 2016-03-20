defmodule AI.ActivationTest do
  use ExUnit.Case

  alias AI.Activation

  test "correctly calculates activation value" do
    assert Activation.value([1], [1]) == 1
    assert Activation.value([2], [1]) == 2
    assert Activation.value([2], [0]) == 0
    assert Activation.value([1,2], [1,1]) == 3
    assert Activation.value([1,2], [1,0]) == 1
    assert Activation.value([0.5, -0.1], [0.5, 0.1]) == 0.24
  end
end
