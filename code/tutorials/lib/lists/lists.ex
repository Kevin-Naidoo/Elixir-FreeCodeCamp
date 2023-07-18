
defmodule Tutorials.Lists do
  @moduledoc """

Function Summary:
1. sum
"""

@doc """
Returns the sum of numbers in a list.
"""
  def sum(nums, acc \\ 0)

  def sum([], acc) do
    acc
  end
  @spec sum(list(number()), integer()) :: number()
  def sum([h|t], acc) do
    sum(t, acc + h)
  end
  # -------------------------------Reverse-------------------------------

  @spec reverse([any()], [any()]) :: [any()]
  def reverse(elements, acc \\ [])
  def reverse([], acc) do
    acc
  end
  def reverse([h|t], acc) do
    reverse(t, [h | acc])
  end

  # -------------------------------Map-------------------------------------
  @spec map([any()], (any() -> any()), [any()]) :: [any()]
  def map(elements, func, acc \\ [])
  def map([],_, acc) do
    reverse(acc)
  end
  def map([h|t], func, acc) do
    map(t, func, [func.(h) | acc] )
  end

  # -------------------------------Concat-----------------------------------
  @spec concat([any()], [any()]) :: [any()]
  def concat(src, dst) do
    concat_func(src |> reverse(), dst)
  end
  defp concat_func([], dst) do
    dst
  end
  defp concat_func([h|t], dst) do
    concat_func(t, [h | dst])
  end

# -------------------------------FlatMap--------------------------------------

def flat_map(elements, func, acc \\ [])
def flat_map([],_,acc) do
  acc
end
def flat_map([h|t], func, acc) do
  flat_map(t,func, concat(acc, func.(h)))
end
end
