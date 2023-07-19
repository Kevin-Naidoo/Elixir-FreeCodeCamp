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
    deck |> Enum.member?(card) #locating card in deck
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size) #Dealing cards {[hand], [rest of deck]}
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename,binary)
  end
end
