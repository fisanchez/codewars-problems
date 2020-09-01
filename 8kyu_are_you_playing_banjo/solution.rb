# My solution
#
def are_you_playing_banjo(name)
  # Implement me!
  return "#{name} plays banjo" if name[0].upcase == "R"
  return "#{name} does not play banjo"
end


# Other solutions
#
def are_you_playing_banjo(name)
  if name.start_with? 'R', 'r'
    name + " plays banjo" 
  else  
    name + " does not play banjo" 
  end 
end
