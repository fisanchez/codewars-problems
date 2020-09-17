~s"""
My inital thought was to square the number and check if it's a whole number. If it is then it's a perfect square, easy peasy. BUT I had an issue passing the square root value to the remainder function.

  I'm sure it has something to do with passing a float value, but I didn't want to spend too much time on this
  :math.sqrt(n) |> rem(1)
  > ** (MatchError) no match of right hand side value: []


My alternate idea was to just square the value returned and see if it equaled the original value.


Functions used:

  :math.sqrt - pulled from the erlang library. It gets the root of a number
  :erlang.trunc - also pulled from the erlang library. It truncates to as many digits you want, defaults to one digit.
  :math.pow - same thing and raises a number to a power of whatever
"""
defmodule Math do
  def square?(n) do
    if n >= 0 do 
      :math.sqrt(n) |> :erlang.trunc |> :math.pow(2) == n
    else
      false
    end
  end
end
