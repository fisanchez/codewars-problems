defmodule Decimator do
  def two_decimal_places(n) do
    n |> Float.round(2)
  end
end
