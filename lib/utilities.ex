defmodule AI.Utilities do

  def random_weights(n) do
    :random.seed(:erlang.now())
    Enum.map(1..n, fn(_) -> random_number end)
  end

  defp random_number() do
    (:random.uniform() * 2) - 1
  end

end
