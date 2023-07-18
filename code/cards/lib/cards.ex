defmodule Cards do
  def create_deck do
    ["Ace", "Two", "Three"] #list of cards
  end

  def shuffle(deck) do
    deck |> Enum.shuffle() #Enum operating on cards list
  end

  def contains?(deck, card) do
    deck |> Enum.member?(card)
  end
end
