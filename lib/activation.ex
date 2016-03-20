defmodule AI.Activation do

  def value(inputs, weights) do
    inputs
    |> Enum.zip(weights)
    |> Enum.reduce(0, fn({a,b}, acc) -> acc + a * b end)
  end

end
