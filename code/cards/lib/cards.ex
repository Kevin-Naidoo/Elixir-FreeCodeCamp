defmodule Cards do
  @moduledoc """
  Provide method for creating and handling a deck of cards

  """

  @doc """
  Returns a list of strings representing a deck of playing cards
  """
  @spec create_deck :: list
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

  @doc """
  Divides deck into a hand and the rest of the deck. The `hand size` argument represents the number
  of cards in hand.

  ## Examples
      iex> deck = Cards.create_deck
      iex> {hand, deck} = Cards.deal(deck, 1)
      iex> hand
      ["Ace of Spades"]

  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size) #Dealing cards {[hand], [rest of deck]}
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename,binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "File does not exist"
    end
  end

  @spec create_hand(integer) :: any
  def create_hand(hand_size) do
    Cards.create_deck |> shuffle |> deal(hand_size)
  end
end
