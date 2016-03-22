defmodule AI.Utilities do

  def random_weights(n) do
    Enum.map(1..n, fn(_) -> random_number end)
  end

  def random_number() do
    :random.seed(:erlang.now())
    (:random.uniform() * 2) - 1
  end

end
