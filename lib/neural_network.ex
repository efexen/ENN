defmodule AI.NeuralNetwork do
  import AI.Utilities

  defstruct weights: [], bias_weight: 0

  def create(input_count) do
    %AI.NeuralNetwork{
      weights: random_weights(input_count),
      bias_weight: random_number
    }
  end

  def answer(neural_network, inputs) do
    AI.Perceptron.activate?(
      [1 | inputs],
      [neural_network.bias_weight | neural_network.weights]
    )
  end

  def train(neural_network, inputs, correct_answer) do
    error = correct_answer - answer(neural_network, inputs)

    %AI.NeuralNetwork{
      weights: new_weights_for_error(neural_network.weights, inputs, error),
      bias_weight: new_weight({neural_network.bias_weight, 1}, error)
    }
  end

  defp new_weights_for_error(weights, inputs, correction) do
    weights
    |> Enum.zip(inputs)
    |> Enum.map(&(new_weight(&1, correction)))
  end

  defp new_weight({weight, input}, correction) do
    learning_constant = 0.001
    weight + (learning_constant * correction * input)
  end

end
