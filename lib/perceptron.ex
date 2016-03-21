defmodule AI.Perceptron do

  def activate?(inputs, weights) do
    activate?(value(inputs, weights))
  end

  def value(inputs, weights) do
    inputs
    |> Enum.zip(weights)
    |> Enum.reduce(0, fn({a,b}, acc) -> acc + a * b end)
  end

  defp activate?(value) when value > 0, do: 1
  defp activate?(value) when value <= 0, do: -1

end
