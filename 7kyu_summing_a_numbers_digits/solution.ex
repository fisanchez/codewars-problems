-s"""

Process was to take every individual digit from the number param, add them and return.

functions used:

abs():
  Accepts an integer arguement and returns the absolute value of the integer. Example `abs(-10) -> 10`

Integer.digits():
  Accepts an integer arguement and returns an array of each digit split. Example `Integer.digits(221) -> [2,2,1]`

Enum.sum():
  Enumerates through an array and adds each integer and return. Example `Enum.sum([1,2,3]) -> 6`
"""
defmodule Kata do 
  def sum_digits(number) do 
    number |> abs() |> Integer.digits() |> Enum.sum()
  end
end
