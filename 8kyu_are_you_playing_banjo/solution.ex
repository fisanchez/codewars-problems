# My solution
#
defmodule TalantDetector do
  def are_you_playing_banjo?(name) do
    first_char = String.slice(name,0..0)
    if first_char == "R" || first_char == "r" do 
      "#{name} plays banjo"
    else
      "#{name} does not play banjo"
    end
  end
end

# Better solution
#
defmodule TalantDetector do
  def are_you_playing_banjo?(name) do
    case (name |> String.first |> String.downcase) do
      "r" -> "#{name} plays banjo"
      _ -> "#{name} does not play banjo"
    end
  end
end

