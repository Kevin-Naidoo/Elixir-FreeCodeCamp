defmodule Tutorials.Recursion.Factorial do

  @spec upto(non_neg_integer, any) :: any
  def upto(num, acc \\ 1) # Default accumulator -> 1

  def upto(0, acc) do #Exit condition
    acc
  end

  def upto(num , acc) do
    upto(num - 1, acc * num)
  end

end
