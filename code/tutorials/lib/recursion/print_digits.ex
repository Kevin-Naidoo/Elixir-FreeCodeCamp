defmodule Tutorials.Recursion.PrintDigits do

  #Base Case
  def upto(0) do
    IO.puts(0)
  end

  def upto(num) do
    #num 3 -> 0, 1, 2, 3
    upto(num - 1)
    IO.puts(num)

  end
end
