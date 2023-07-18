defmodule Cards do
  def create_deck do
    ["Ace", "Two", "Three"]
  end

  def shuffle(deck) do
    deck |> Enum.shuffle()
  end
end
