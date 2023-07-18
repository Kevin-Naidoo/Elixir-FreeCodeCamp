defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"] #list of cards
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"] #list of suits

    for suit <- suits, value <- values do
        "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    deck |> Enum.shuffle() #Enum operating on cards list
  end

  def contains?(deck, card) do
    deck |> Enum.member?(card)
  end
end
